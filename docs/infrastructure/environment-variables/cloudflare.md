---
description: Our CDN piece of infrastructure, tunneling all traffic to P4 websites
---

# Cloudflare

## Configuration

All the permanent settings in [Cloudflare](https://www.cloudflare.com/) are managed by code ([Terraform](https://www.terraform.io/)) and deployed through GitLab CI.

Any change to our Cloudflare assets and their respective configuration should happen through [code](https://gitlab.greenpeace.org/gp/git/operations/cdn-and-web-redirects/cloudflare).

## Workers

We are using a few [Cloudflare workers](https://workers.cloudflare.com/) for applying certain functionality on specific routes/urls. The workers deployment is also managed in code and deployed by CircleCI.

### Static files

This [worker](https://github.com/greenpeace/planet4-static-files) is responsible for proxying 4 static files (practically anything from the Media Library) from GCP buckets. The worker in practice does the following things:

* Masks default GCP url (`storage.googleapis.com`) with one of our own (`www.greenpeace.org/static/`) branding reasons.
* Using our own domain, also allow us to use Cloudflare's [Polish](https://developers.cloudflare.com/images/polish/) feature for optimizing images, since it can ony be applied in a domain we own.
* Since the files are now served from our domain they are also cached by Cloudflare in its edge servers, which are closer to end user location.
* We also have the option to adjust headers if needed. Currently we decrease browser cache for pdf files to ensure end users don't get an older version when a file is replaced with a new one.

### Robots

This [worker](https://github.com/greenpeace/planet4-robots) is responsible for rendering a `robots.txt` file to ensure dev and staging are not indexed by search engines.

### Homepage

This [worker](https://github.com/greenpeace/planet4-homepage) is responsible for rendering the Planet 4 [homepage](https://planet4.greenpeace.org/).

