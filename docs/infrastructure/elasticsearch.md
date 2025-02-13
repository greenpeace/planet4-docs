---
description: An intro to the ElasticSearch technology and how Planet 4 uses it.
---

# ElasticSearch

### Kubernetes

For P4 we have an ES cluster in [Google Kubernetes Engine](https://console.cloud.google.com/kubernetes/workload?authuser=0\&project=planet-4-151612\&workload_list_tablesize=50) (GKE). Our cluster’s name is "elasticsearch" and consists of a total of 7 nodes which are 3 master-eligible nodes, 2 data nodes and 2 client nodes. At any given time only one of the master-eligible nodes is elected as actual Master node. Each data node of our cluster has multiple Indices (one for each P4 website). Each Index has 5 primary shards and 5 replica shards. The primary and the replica shards are stored in separate data nodes, so that if one of them drops then the other one can be used to continue operating without problems.

![GKE ES](<../.gitbook/assets/google-kubernetes-engine-es-cluster (3) (3) (3) (3) (3) (1) (1) (1) (1) (1) (1) (1) (1) (1) (1) (1).png>)

In order to talk to the ES cluster and send requests to it, we need to forward our local port 9200 to the Kubernetes pod with these two commands:

```bash
export POD_NAME=$(kubectl get pods --namespace default -l "app=elasticsearch,component=client,release=p4-es" -o jsonpath="{.items\[0\].metadata.name}")

kubectl port-forward --namespace default ${POD_NAME} 9200:9200
```

Then we can do curl requests locally to our localhost:9200 and those will be forwarded to our ES cluster in GKE.

### ElasticPress

In order for EP to talk to elasticsearch we need to provide the Host in the plugins Settings page:

`http://p4-es-elasticsearch-client.default.svc.cluster.local:9200/` -> For production ES cluster

We use the ElasticPress plugin which translates the WP\_Queries into an HTML request that elasticsearch understands and also passes data to the request in Json format. The simplest way to make EP act as a middle man (via code) is by adding this to our WP\_Query arguments: `$args['ep_integrate'] = true;` We do this [here](https://github.com/greenpeace/planet4-master-theme/blob/v1.309.0/src/Search/Search.php#L59).

We have 2 classes related to P4 Search functionality. [Search](https://github.com/greenpeace/planet4-master-theme/blob/v1.309.0/src/Search/Search.php) and [ElasticSearch](https://github.com/greenpeace/planet4-master-theme/blob/v1.309.0/src/Search/ElasticSearch.php) which extends the first one. Search should work with other plugins as well (like the SearchWP that we had prior to moving to elasticsearch). ElasticSearch adds all the functionality required to customize EP functionality to the needs of P4.
