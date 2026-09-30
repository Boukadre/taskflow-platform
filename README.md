# TaskFlow Platform

Home-lab multi-VM opéré de bout en bout : infrastructure réseau, conteneurisation, haute disponibilité et observabilité, hébergeant une application moderne (TaskFlow) développée en parallèle d'un composant legacy maintenu volontairement à l'identique.

## Architecture

- **app/** — TaskFlow : API Laravel + Sanctum, conteneurisée
- **frontend/** — Interface Nuxt (phase tardive)
- **legacy-reports/** — Dashboard de reporting PHP/Apache/MySQL, maintenu tel quel pour simuler une migration progressive
- **platform/vagrant/** — Home-lab multi-VM (DNS/DHCP, fileserver, hôtes applicatifs RHEL/Debian)
- **ansible/** — Provisioning du home-lab
- **terraform/** — Cible cloud parallèle (AWS Free Tier)
- **docker/** — Conteneurisation de la stack applicative
- **k8s/** — Manifests Kubernetes (k3s local → EKS)
- **monitoring/** — Prometheus, Grafana, Loki/Promtail
- **ops/** — Scripts d'automatisation et outillage Python

## Status
Phase 1 terminée. Phase 2 (automatisation & Git) en cours.
