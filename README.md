<div align="center">
    <img src="./logo.png" />
</div>

## 📋 Requirements:
These are the required libraries/packages to run this stack:
 - [Docker](https://docker.com)
 - [Docker Compose](https://docs.docker.com/compose/)

## 🚀 Usage:
```shell
curl -L alfred.nuro.sh | sh
```

## 🔑 Access:
| Container		        | URL                       | Port        |
| --------------------- |:-------------------------:|:-----------:|
| Arm Exporter          | `arm.metrics.ip_address`  | `9243`      |
| Cadvisor		        | `cadvisor.ip_address`     | `8080`      |
| Grafana		        | `monitoring.ip_address`   | `3000`      |
| Heimdall		        | `manager.ip_address`      | `81`        |
| Node Exporter	        | `node.metrics.ip_address` | `9100`      |
| Pi-Hole               | `dns.ip_address/admin`    | `8181`      |
| Prometheus            | `db.ip_address`           | `9090`      |
| SteamCache DNS        | `dns.cache.ip_address`    | `54`        |
| SteamCache Proxy      | `proxy.cache.ip_address`  | `442`       |
| Traefik               | `proxy.ip_address`        | `7070`      |

## 📄 License:
MIT © [Ben Dixon](https://github.com/NuroDev/alfred/blob/master/LICENSE)
