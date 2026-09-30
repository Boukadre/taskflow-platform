# Environnement de travail

## Poste de pilotage

Le développement et le pilotage de l'infrastructure se font sous WSL2 (Ubuntu), avec VS Code connecté en mode Remote-WSL. Le projet est créé et édité exclusivement depuis le filesystem Linux (`/home/...`), jamais via `/mnt/c/...` : passer par le filesystem Windows monté expose à des permissions incohérentes, une latence disque significative, et une conversion de fins de ligne (CRLF au lieu de LF) qui casse silencieusement les scripts bash.

## Pourquoi pas de VM pour l'instant

Docker Desktop + WSL2 suffisent pour toute la phase applicative (scripting, conteneurisation). Une VM (VirtualBox/Vagrant) ne devient nécessaire qu'à partir des modules réseau : le NAT virtuel de WSL2 ne relaie pas correctement le trafic broadcast, ce qui rend le DHCP impossible à valider correctement dans cet environnement. Le home-lab multi-VM sera introduit en Phase 4.

## Stockage
TODO — module Disk/Storage (LVM, partitionnement) non accessible sur le compte actuel (contenu payant). À traiter : mise à niveau du compte ou auto-formation, ce sont des bases sysadmin qu'un portfolio senior ne peut pas ignorer indéfiniment.


## Accès distant (SSH)
Politique cible, à appliquer dès la mise en place des VM du home-lab (Phase 4) :
- Authentification par clé uniquement, mot de passe désactivé
- Alias par hôte dans `~/.ssh/config`
- Port SSH non standard sur les hôtes exposés

Non applicable pour l'instant : pas de service SSH réel à durcir tant que les VM du home-lab n'existent pas.
