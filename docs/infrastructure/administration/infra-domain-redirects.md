---
description: >-
  This page attempts to explain the various redirect options at work in GP
  globally and P4 specifically.
---

# Domain Redirects

## What is a redirect?

Please read [this](https://en.wikipedia.org/wiki/URL_redirection).

## Cloudflare

Cloudflare is the main host of the [greenpeace.org](http://greenpeace.org) domain. This service provides SSL certificates, web site protection, workers and page rules. Page rules are also redirects and can be found [here](https://dash.cloudflare.com/5f9822763ab18887b2c9431b6d3835ca/greenpeace.org/page-rules).

Cloudflare also provides JavaScript workers which provide quick actions to take place on [greenpeace.org](http://greenpeace.org) shortcuts. For example [greenpeace.org/coke](http://greenpeace.org/coke) automatically opens the PDF about GPs actions against Coca Cola. Workers are also used to automate redirections based on GEOIP information. These are stored and generated in a Gitlab [repo](https://gitlab.greenpeace.org/gp/git/global-apps/cloudflare/cloudflare-greenpeace_org-redirect-worker/-/blob/master/worker-java-script-code/tf-global-redirects.js).

## Google Cloud Platform - P4

There are currently 2 solutions running in P4 that provides redirects and generates SSL certificates.

### Global Redirects Nginx  Cert Manager

For more details follow the links for the deployment of [Nginx](https://sites.google.com/greenpeace.org/p4-infra/google-cloud-platform/k8-workloads/nginx-controller?authuser=0) & Cert Manager. There are also the Github repos for these deployments [Nginx](https://github.com/greenpeace/global-redirects-nginx-ingress), [Cert Manager](https://github.com/greenpeace/planet4-cert-manager) & [Global Redirects](https://github.com/greenpeace/global-redirects).

We do not have cluster issuers setup due to multiple cert solutions in the cluster ie. nginx and traefik. We have a cert manager issuer in the global-redirects namespace.

#### **Adding a new site**

When you add a new site to the [json](https://github.com/greenpeace/global-redirects/blob/develop/prod.sites.json) file the following objects get created in the global-redirects namespace:

* ingress:  redirects- ie. redirects-greenpeace-eu
* solver ingress:  cm-acme-http-solver-5 digit number ie. cm-acme-http-solver-gmg2v
* certificate: -tls ie. greenpeace-eu-tls with a status of false
* secret: -tls ie. greenpeace-eu-tls with a private key but without a tls.crt value
* certificaterequest:  -tls-10 digit number ie. greenpeace-eu-tls-3080127316 with a status of false
* order: -tls-10 digit number-10 digit number ie. greenpeace-eu-tls-3080127316-995221990 with a status of pending
* challenge:  -10 digit number ie. greenpeace-eu-tls-3080127316-995221990-1701701576 with a status of pending
* solver pod:  cm-acme-http-solver-5 digit number ie. cm-acme-http-solver-vlqn8

The order of events to successfully get a certificate is:

1. The above items are created
2. All orders, challenges etc. are in a pending state and certs\requests are in a false state waiting for the http01 challenge and cert issuance.
3. If the http01 challenge is successful \(ie. the domain A record or CNAME point to this nginx ingress controller\) you should get a cert.  
   1. The following will be deleted: solver ingress, challenge and solver pod 2. Your certificate & certificaterequest will be updated with a status of true, order will be updated with a status of valid 3. Your secret will be updated with the value of your new certificate: ie. tls.crt: 3554 bytes. 4. If you wish to view your certificate run:

   ```bash
    k get secret greenpeace-lu-tls -o=yaml
    This will provide you with the encrypted cert key, which you can extract and view
    See instructions [here](https://www.notion.so/p4infra/Redirects-3a5488abbb784c9e911e6b6311870eae#be4a204d267c4071a476e0ee7af2251e).
   ```

4. If the certificate is not created you can basically query each of the various objects created to determine the status of your certificate issuance:

   ```bash
    k describe cert greenpeace-eu-tls
    Name:         greenpeace-eu-tls
    Namespace:    global-redirects
    ...
    Status:
      Conditions:
        Last Transition Time:  2020-05-11T01:03:02Z
        Message:               Waiting for CertificateRequest "greenpeace-eu-tls-3080127316" to complete
        Reason:                InProgress
        Status:                False
        Type:                  Ready

    k describe certificaterequest greenpeace-eu-tls-3080127316                                        ⎈ planet4-production/global-redirects
    Name:         greenpeace-eu-tls-3080127316
    Namespace:    global-redirects
    ...
    Status:
      Conditions:
        Last Transition Time:  2020-05-11T01:03:09Z
        Message:               Waiting on certificate issuance from order global-redirects/greenpeace-eu-tls-3080127316-995221990: "pending"
        Reason:                Pending
        Status:                False
        Type:                  Ready

    k describe challenge greenpeace-eu-tls-3080127316-995221990-1701701576                             ✘ INT ⎈ planet4-production/global-redirects
    Name:         greenpeace-eu-tls-3080127316-995221990-1701701576
    Namespace:    global-redirects
    ....
    Status:
      Presented:   true
      Processing:  true
      Reason:      Waiting for http-01 challenge propagation: wrong status code '404', expected '200'
      State:       pending

    So there is a solver ingress and a solver pod, but the numbers don't match!

    k get ingress                                                                                     3s ⎈ planet4-production/global-redirects
    NAME                                                    HOSTS                                         ADDRESS                                        PORTS     AGE
    cm-acme-http-solver-gmg2v                               greenpeace.eu                                 146.148.49.122,35.222.153.168,35.224.232.241   80        5h52m

    The hard bit is finding which solver pod to get the logs from, as the referred solver
    in the ingress does not match the solver name in the pods.  Each pod is however dedicated
    to a particular ingress:

    k get pods
    NAME                                                           READY   STATUS    RESTARTS   AGE
    cm-acme-http-solver-2shtc                                      1/1     Running   0          6h1m
    cm-acme-http-solver-n8csr                                      1/1     Running   0          5h57m
    cm-acme-http-solver-8567t                                      1/1     Running   0          5h55m

    If you get the right pod, you can check it:

    k describe pods cm-acme-http-solver-n8csr
    Name:           cm-acme-http-solver-n8csr
    Namespace:      global-redirects
    ...
    Controlled By:  Challenge/greenpeace-eu-tls-3080127316-995221990-1701701576
    ...
        Args:
          --listen-port=8089
          --domain=greenpeace.eu
          --token=gyNmYAUGVBOygzdWRt08VTceXLShDLRu3vXt6XO_nNE
          --key=gyNmYAUGVBOygzdWRt08VTceXLShDLRu3vXt6XO_nNE.s2p1KJwO58D1ud9FYVHhMGVMkjN8c8dbUVFra06DWVo

    k logs cm-acme-http-solver-n8csr
    I0511 01:05:33.787084       1 solver.go:39] cert-manager/acmesolver "msg"="starting listener"  "expected_domain"="greenpeace.eu" "expected_key"="gyNmYAUGVBOygzdWRt08VTceXLShDLRu3vXt6XO_nNE.s2p1KJwO58D1ud9FYVHhMGVMkjN8c8dbUVFra06DWVo" "expected_token"="gyNmYAUGVBOygzdWRt08VTceXLShDLRu3vXt6XO_nNE" "listen_port"=8089
   ```

5. Finally if you cannot get the cert to issue for example the following happens:

   ```bash
    Your cert gets partially updated incorrectly, 969 bytes is too small for a tls.cert:
    Data
    ca.crt:   0 bytes
    tls.crt:  969 bytes
    tls.key:  1679 bytes

    Your resolver ingress disappears

    Your cert continually reports an error completing the acme resolver:
    Reason:      Waiting for http-01 challenge propagation: did not get expected response when querying endpoint, expected "iIIpfIwpyqaF10PQ9hWHWbep2CMUXMVhSe5unIh96HY.s2p1KJwO58D1ud9FYVHhMGVMkjN8c8dbUVFra06DWVo" but got:

    You can delete everything and start again, be sure to do it in this order.  

    k delete ingress redirects-greenpeace-cz                                                            4s ⎈ planet4-production/global-redirects
    ingress.extensions "redirects-greenpeace-cz" deleted

    k delete secrets greenpeace-cz-tls                                                                     ⎈ planet4-production/global-redirects
    secret "greenpeace-cz-tls" deleted

    Recreate the ingress by either running the CircleCI job again, or on the cmd line
    if you have the yamls handy from running:
    make prodprep

    kubectl apply -f ingress-greenpeace-cz.yaml

    Check your cert again:

    k get certs | grep cz                                                                               6s ⎈ planet4-production/global-redirects
    greenpeace-cz-tls                                 True    greenpeace-cz-tls                                 16m
   ```

## P4 Redirects Nginx  Cert Manager

Coming soon hopefully

## Traefik

For more details follow the links for the deployment of [Traefik](https://sites.google.com/greenpeace.org/p4-infra/google-cloud-platform/k8-workloads/traefik?authuser=0) & [Consul](https://sites.google.com/greenpeace.org/p4-infra/google-cloud-platform/k8-workloads/consul?authuser=0).

Restart traefik using this command:

```bash
for i in $(kubectl -n kube-system get pod -l app=traefik -o name); do echo $i; kubectl -n kube-system delete $i; sleep 20; done
```

### Certificate Renewal Broken

Every 3 months when certs should be renewed Traefik breaks. To resolve this you need to change the prefix path in the configuration and get Traefik to issue all new certs. Ensure you do Dev and Prod in different weeks to avoid hitting any certificate limitations of Lets Encrypt. To see last times failures check here: [https://docs.google.com/spreadsheets/d/1HMV0d37gPsIK0DT86HxMsl97VILEs6NmuVE9AHPrxYY/edit\#gid=1485504089](https://docs.google.com/spreadsheets/d/1HMV0d37gPsIK0DT86HxMsl97VILEs6NmuVE9AHPrxYY/edit#gid=1485504089)

Follow on of these pull requests for examples of the code change: [https://github.com/greenpeace/planet4-traefik/pull/9](https://github.com/greenpeace/planet4-traefik/pull/9)

Then monitor this log to ensure all expected certs are issued: [https://console.cloud.google.com/logs/viewer?project=planet4-production&minLogLevel=0&expandAll=false×tamp=2020-08-05T03:35:52.322000000Z&customFacets=&limitCustomFacetWidth=true&interval=NO\_LIMIT&resource=k8s\_container%2Fcluster\_name%2Fplanet4-production%2Fnamespace\_name%2Fkube-system%2Fcontainer\_name%2Ftraefik&scrollTimestamp=2020-08-05T00:17:18.000000000Z&filters=text:responded](https://console.cloud.google.com/logs/viewer?project=planet4-production&minLogLevel=0&expandAll=false&timestamp=2020-08-05T03:35:52.322000000Z&customFacets=&limitCustomFacetWidth=true&interval=NO_LIMIT&resource=k8s_container%2Fcluster_name%2Fplanet4-production%2Fnamespace_name%2Fkube-system%2Fcontainer_name%2Ftraefik&scrollTimestamp=2020-08-05T00:17:18.000000000Z&filters=text:responded)

Once certificates have been issues check they actually have a new end date. You can't just go to [www.greenpeace.org](http://www.greenpeace.org) and check it as it will show you the Cloudflare cert.

```bash
openssl s_client -connect [master.k8s.p4.greenpeace.org:443](http://master.k8s.p4.greenpeace.org:443/) -servername [www.greenpeace.org](http://www.greenpeace.org/) <<< "Q"
```

Then copy the cert details output into a cert checker like this one [https://www.sslshopper.com/certificate-decoder.html](https://www.sslshopper.com/certificate-decoder.html) to confirm the cert is real and updated.

### Consul

In addition all Traefik certs are stored in a Consul database which has to be interrogated to determine the contents of http challenges and certs.

To query the traefik certificate database held in Consul do this: \(this is based on this info: [https://stackoverflow.com/questions/55645551/how-to-remove-certificate-from-traefik-acme-storage-when-saved-to-consul-kv](https://stackoverflow.com/questions/55645551/how-to-remove-certificate-from-traefik-acme-storage-when-saved-to-consul-kv)\)

```bash
Download the consul client binary or brew install consul

Setup the consul access
k -n consul port-forward svc/p4-consul-server 8500
export CONSUL_HTTP_ADDR=http://127.0.0.1:8500
env | grep CON
CONSUL_HTTP_ADDR=http://127.0.0.1:8500

Run this to extract the file
./consul kv get traefik/acme/account/object | gzip -dc > acme.json                                                                                                                   ✘ 127|1
gzip: (stdin): trailing garbage ignored

The contents of the acme.json has all the certificates in your store

To query an extracted cert, put it in a file using this command:
openssl base64 -d -A <<< (insert the certificate from the json by copying
everything between "" after "Certificate":) > cert.crt

then run:
openssl x509 -in cert.crt -text -noout
Certificate:
    Data:
        Version: 3 (0x2)
        Serial Number:
            03:38:db:f1:47:b7:e8:7e:b3:8b:b2:0b:9e:7d:bf:72:ea:da
    Signature Algorithm: sha256WithRSAEncryption
        Issuer: C=US, O=Let's Encrypt, CN=Let's Encrypt Authority X3
        Validity
            Not Before: Jan 14 13:56:15 2020 GMT
            Not After : Apr 13 13:56:15 2020 GMT
        Subject: CN=greenpeace.org
```

[sites\_template.json](Redirects%20&%20Certificate%20Issuance%203a5488abbb784c9e911e6b6311870eae/sites_template.json)

## Testing redirects

For a redirect from a domain name to work with automatic certificate generation via Lets Encrypt, you need the following as a minimum to be setup before certificate generation can be successful:

* For root domains ie. [example.com](http://example.com), you need an A record pointing to the IP of the relevant controller.
* For sub domains ie. www.example.com, you can have either an A record or a CNAME pointing to the relevant controller.
* If you want to test what result you will get from a particular controller you can add the controller details to your hostfile and see if the test succeeds ie.
  * If using a mac:  sudo vim /etc/hosts
  * Add record you are testing ie:

    ```bash
    www.example.com     10.10.10.10

    dig www.example.com
    ....
    ;; ANSWER SECTION:
    www.example.com.    21515    IN    A    10.10.10.10

    openssl s_client -connect www.example.com:443 -servername www.example.com <<< "Q"

    CONNECTED(00000005)
    depth=2 O = Digital Signature Trust Co., CN = DST Root CA X3
    verify return:1
    depth=1 C = US, O = Let's Encrypt, CN = Let's Encrypt Authority X3
    verify return:1
    depth=0 CN = www.example.com
    verify return:1
    ```

