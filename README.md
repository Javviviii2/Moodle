# Moodle
Curse: ASIR 2024
School: CPIFP Alan Turin

## Diary
[Moodle binnacle](https://docs.google.com/document/d/1KNaS97n7dDzfjWdDSxk-xkjukFkCoAAS8Q0o4S3_wx4/edit?usp=sharing)

## Moodle Imagen from Bitnami
**Oficial Documentation**: [bitnami-lms-powered-by-moodle-lms](https://github.com/bitnami/containers/tree/main/bitnami/moodle#bitnami-lms-powered-by-moodle-lms)

## MariaDB Imagen from Bitnami
** Offical Documentation**: [MariaDB by Bitnami](https://github.com/bitnami/containers/tree/main/bitnami/mariadb)

# Google Cloud Cluster
Create the cluster:
    gcloud container clusters create-auto moodle --location=europe-southwest1
Deployment apps:
    kubectl apply -f .\template\

# Public Moodle IP:
    http://34.175.72.35