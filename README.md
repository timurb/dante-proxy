# Dante SOCKS5 proxy

The main use is to quickly spin up the SOCKS5 proxy inside Kubernetes in restricted environments for accessing internal resources.

For production use rebuild of container is highly recommended.

## Usage
```
kubectl run tmpproxy --image erthad/dante-proxy
kubectl port-forward tmpproxy 1080:1080
```

Set proxy in your browser config to use 127.0.0.1:1080 and see if it works.


## License and authors
* License:: MIT
* Author:: Timur Batyrshin <timurb@hey.com>
