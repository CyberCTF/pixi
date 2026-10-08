# Upstream

| | |
| --- | --- |
| Project | Pixi (OWASP DevSlop) |
| Repository | https://github.com/DevSlop/Pixi |
| Version | master (no release tags; upstream marks it unmaintained) |
| Commit | cb716a94fa368acade96e9bdb8b25c1a68703e60 |
| Licence | Apache-2.0 |

`app/` is that commit, unchanged, without its Git history. The `app` machine builds with
upstream's own `app/app/Dockerfile` as-is (Node 8.1.2, dependencies from its
`package-lock.json`). The `pixidb` machine is the seeded MongoDB image upstream's
`docker-compose.yaml` runs, `deadrobots/pixi:datastore`, pinned by digest; its data is not in the
source repository. Upstream's `app/api/` folder is not used by its compose file and is not run
here. To update, replace `app/` with a newer commit, then change this table.
