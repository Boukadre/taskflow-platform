# Procédure de reprise après sinistre (Disaster Recovery)

## Portée
Procédure de sauvegarde/restauration pour TaskFlow Platform. Basée sur les mécanismes shell validés (tar/gzip, md5sum). Sera testée en conditions réelles à la Phase 3, une fois PostgreSQL et le legacy MySQL déployés.

## Sauvegarde
```bash
current_date=$(date +%F)
tar -czvf backup-${current_date}.tar.gz /chemin/vers/donnees
md5sum backup-${current_date}.tar.gz > backup-${current_date}.tar.gz.md5
```

## Vérification d'intégrité avant restauration
```bash
md5sum -c backup-${current_date}.tar.gz.md5
```
Un retour différent de `OK` interrompt la procédure — jamais de restauration sur une archive dont l'empreinte ne correspond pas.

## Restauration
```bash
sudo tar -xzf backup-${current_date}.tar.gz -C /
```

## Statut
Procédure définie, non testée sur données réelles TaskFlow. Validation prévue au premier déploiement PostgreSQL/MySQL (Phase 3).
