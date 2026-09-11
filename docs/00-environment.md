# Environnement de travail

## Poste de pilotage

Le développement et le pilotage de l'infrastructure se font sous WSL2 (Ubuntu), avec VS Code connecté en mode Remote-WSL. Le projet est créé et édité exclusivement depuis le filesystem Linux (`/home/...`), jamais via `/mnt/c/...` : passer par le filesystem Windows monté expose à des permissions incohérentes, une latence disque significative, et une conversion de fins de ligne (CRLF au lieu de LF) qui casse silencieusement les scripts bash.

## Pourquoi pas de VM pour l'instant

Docker Desktop + WSL2 suffisent pour toute la phase applicative (scripting, conteneurisation). Une VM (VirtualBox/Vagrant) ne devient nécessaire qu'à partir des modules réseau : le NAT virtuel de WSL2 ne relaie pas correctement le trafic broadcast, ce qui rend le DHCP impossible à valider correctement dans cet environnement. Le home-lab multi-VM sera introduit en Phase 4.

## Stockage

TODO — à compléter après le module sur la gestion des disques (LVM, partitionnement, points de montage persistants).
