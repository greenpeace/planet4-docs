# Working with K8S

## Pods

You work with K8 pods in a similar way to getting inside the docker containers but you want to get inside your containers which are now inside your pods. So instead of using docker commands to do this, we used the kubectl command. Refer to getting started for more tips on using this tool. The following aliases are in place:

```bash
k = kubectl 
g = get 
p = pods 
l = logs
```

Getting inside you pods allows you to do further checks of the success of your deployments. Firstly you will need to determine your context, this can then be followed up with commands regarding the pods in that context.

```bash
# Get into the correct GCP context

kubectx p4-dev

# where

kubectx p4-dev=gke_planet-4-151612_us-central1-a_p4-development

# Set the namespace for the project

kubens jctest

# Get list of pods with a particular release name

kgp -l release=planet4-jctest

# Get pod logs for a particular deployment

kl planet4-jctest-wordpress-openresty-765f7b5574-vjwnt

# Get yaml deployment details about pod

k get deployment planet4-jctest-wordpress-openresty -o yaml

# Edit your deployment on the fly, this useful tool allows you to correct 
# crashing pods due to incorrect yaml, it opens the yaml file using your editor
# allowing you to edit. Once you have made corrections, ensure you update 
# the code to reflect the changes.

k edit deployment/planet4-jctest-master-wordpress-openresty

# To get to a bash shell in a deployment running a docker container, 
# it is just like being in a locallly running docker container.**

k exec -it planet4-jctest-master-wordpress-openresty-c55bcdbc8-cj9db bash

# To get details about the pod

k describe pods rcjira-6476dbfb-4tz7p
```

## Secrets

```bash
# To get secrets or certificates

k get secrets
k get certificates

k get secret db-secret-pass -o yaml

# Once the secret is listed, you may need to decrypt it, -A is for long ones:

openssl base64 -d -A <<< <secrethere> > cert.crt

openssl x509 -in cert.crt -text -noout

Certificate:
    Data:
        Version: 3 (0x2)
        Serial Number:
            04:3e:d7:94:c0:93:d7:8a:fc:12:e5:72:8d:26:c6:d7:e5:a6
    Signature Algorithm: sha256WithRSAEncryption
        Issuer: C=US, O=Let's Encrypt, CN=Let's Encrypt Authority X3
        Validity
            Not Before: Apr 25 10:36:11 2020 GMT
            Not After : Jul 24 10:36:11 2020 GMT
        Subject: CN=p4.jencub.xyz
        Subject Public Key Info:
```

## Upgrading K8 clusters & nodes

{% hint style="info" %}
Relevant repository: [greenpeace/planet4-helper-scripts](https://github.com/greenpeace/planet4-helper-scripts/tree/master/k8s)
{% endhint %}

```bash
# Start by checking the status of your master and node versions,
# masters are always auto-upgraded by GCP and nodes preferably are as well
# if they can be.  If not, you have to manually upgrade your nodes.
# GCP will not automatically upgrade the master more than 2 versions higher 
# than the node version even if a higher version becomes 
# available, however if necessary you can do this manually.

gcloud container clusters describe testrc

# The output will show something like this:
currentMasterVersion: 1.15.9-gke.24
currentNodeCount: 1
currentNodeVersion: 1.15.9-gke.24

# To get a list of available versions:

gcloud container get-server-config

# At this stage you have no upgrades to perform.
# To upgrade the master first run:

gcloud container clusters upgrade cluster-name --master

# For cluster upgrade completed recently see:  
# https://www.notion.so/p4infra/28th-April-f84391c6f8d342138fdc39ec955e1405#eaa7158e03134c439841f438e710d8a3

# To upgrade to a specific version that is not the default, run the following command:

gcloud container clusters upgrade cluster-name \
  --master --cluster-version cluster-version

# To check nodes and version run:

kubectl get nodes

# To see the status of your nodes (and what pods are running on them) run:

kubectl describe nodes node-name
```

For more info check:

* [Manually upgrading a cluster or node pool](https://cloud.google.com/kubernetes-engine/docs/how-to/upgrading-a-cluster)

## Nodes

[**Node allocation**](https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/) is useful if you need to isolate some pods or deployments to use a particular node. This is an example of defining a node label and then using it to schedule \(run\) pods on it:

```bash
# Get the list of nodes you want to label:
planet4-helper-scripts/k8s k8updates !1 ❯ k get nodes |grep 18                                                                                     ⎈ p4-development/develop
gke-p4-development-pool-18-6244d7ab-27b6   Ready    <none>   29m   v1.15.11-gke.9
gke-p4-development-pool-18-6244d7ab-r0kc   Ready    <none>   29m   v1.15.11-gke.9

planet4-helper-scripts/k8s k8updates !1 ❯ k label nodes gke-p4-development-pool-18-6244d7ab-27b6 redis=ten                           6s ⎈ p4-development/develop
node/gke-p4-development-pool-18-6244d7ab-27b6 labeled

# Then use this label to tag your pod\deployment etc. to run on this node.
# You need to determine who is managing the pod to determine which type you
# need to edit, in this case we have a StatefulSet with no Node-Selectors:

planet4-helper-scripts/k8s k8updates !1 ❯ k describe pod planet4-jctest-redis-master-0                                                          4s ⎈ p4-development/develop
Name:           planet4-jctest-redis-master-0
Namespace:      develop
...
Controlled By:  StatefulSet/planet4-jctest-redis-master
...
Node-Selectors:  <none>

# You can manually edit this to push it to your new node:

planet4-helper-scripts/k8s k8updates !1 ❯ k edit StatefulSet planet4-jctest-redis-master                                                                   42s ⎈ p4-development/develop
statefulset.apps/planet4-jctest-redis-master edited

      dnsPolicy: ClusterFirst
      nodeSelector:
        redis:  ten
      restartPolicy: Always

# You can then check if it was deployed to the new node:
planet4-helper-scripts/k8s k8updates !1 ❯ k get pods -o wide |grep jctest                                                                                  34s ⎈ p4-development/develop
planet4-jctest-redis-master-0                                   1/1     Running   0          8s      10.8.8.5      gke-p4-development-pool-18-6244d7ab-r0kc   <none>           <none>
planet4-jctest-wordpress-openresty-6497549c68-6qkgt             1/1     Running   0          16h     10.8.4.15     gke-p4-development-pool-15-5482dbbe-1t2r   <none>           <none>
planet4-jctest-wordpress-php-864c7756f6-gsdlv                   1/1     Running   5          16h     10.8.1.147    gke-p4-development-pool-15-5482dbbe-h6vw   <none>           <none>
```

