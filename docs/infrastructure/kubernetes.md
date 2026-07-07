---
description: Getting started steps for getting an overview of the Kubernets cluster.
---

# Kubernetes

### System Requirements

* [kubectl](https://kubernetes.io/docs/reference/kubectl/)
* [gcloud](https://docs.cloud.google.com/sdk/gcloud)
* [Lens IDE](https://lenshq.io/)

#### Platform specific steps

{% tabs %}
{% tab title="Linux" icon="linux" %}
Install basic system dependencies:

```shellscript
sudo apt install -y apt-transport-https ca-certificates curl
```

Add Kubernetes package repository:

```shellscript
sudo curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.30/deb/Release.key | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-archive-keyring.gpg
echo 'deb [signed-by=/etc/apt/keyrings/kubernetes-archive-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.30/deb/ /' | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo apt update
```

Install `kubectl`:

```shellscript
sudo apt-get install -y kubectl
```

Add Google package repository:

```shellscript
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo gpg --dearmor -o /usr/share/keyrings/cloud.google.gpg
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
sudo apt update
```

Install `gcloud`:

```shellscript
sudo apt install -y google-cloud-cli google-cloud-sdk-gke-gcloud-auth-plugin
```
{% endtab %}

{% tab title="MacOS" icon="apple" %}
Install `kubectl`:

```shellscript
brew install kubectl
```

Install `gcloud`:

```shellscript
brew install google-cloud-sdk
gcloud components install gke-gcloud-auth-plugin
```
{% endtab %}
{% endtabs %}

#### Lens IDE

Install the [relevant package](https://lenshq.io/download) for your operating system.

### Configuration

Login to your account:

```shellscript
gcloud auth login
```

Connect to development cluster:

```shellscript
gcloud container clusters get-credentials p4-development --zone us-central1-a --project planet-4-151612
```

Verify available clusters:

```shellscript
kubectl config get-contexts
```

Rename content to a human readable alias:

```shellscript
kubectl config rename-context [long-cluster-name] p4-development
```

Switch to that cluster if you have more than one:

```shellscript
kubectl config use-context p4-development
```

Verify the connection:

```shellscript
kubectl get nodes
kubectl get namespaces
kubectl get pods -n [namespace]
```
