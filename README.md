# Pixi

[Pixi](https://github.com/DevSlop/Pixi) by Nicole Becher (OWASP DevSlop): a deliberately
vulnerable photo-sharing web application and API built on Node.js and MongoDB. This repository
runs it with [Isoloom](https://www.isoloom.com): [`isoloom.yml`](isoloom.yml) describes the
machines, and the upstream source in [`app/`](app) builds with its own Dockerfile
([`app/app/Dockerfile`](app/app/Dockerfile)).

| Machine | Service |
| --- | --- |
| app | Pixi web application on port 8000 and its API on port 8090 |
| pixidb | MongoDB 3.4 with Pixi's seed data (upstream's `deadrobots/pixi:datastore` image) on port 27017 |

Upstream no longer maintains Pixi; it still runs as published.

## Run it

```bash
isoloom generate
isoloom run docker
```

Then open http://localhost:8000/ (web) and http://localhost:8090/ (API). The same spec runs as
Docker on a local VM (`docker-vm`), on a cloud VM (`cloud-docker`) or on Kubernetes. Lab guide:
[upstream's README](https://github.com/DevSlop/Pixi#readme) and the
[DevSlop project](https://devslop.co).

Upstream version and commit: [UPSTREAM.md](UPSTREAM.md).

## Licence

Apache-2.0, as Pixi ([LICENSE](LICENSE)). This application is deliberately vulnerable: keep it
isolated.
