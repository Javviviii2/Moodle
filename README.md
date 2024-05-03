# Moodle
Curse: ASIR 2024
School: CPIFP Alan Turin

## Diary
[Moodle binnacle](https://docs.google.com/document/d/1KNaS97n7dDzfjWdDSxk-xkjukFkCoAAS8Q0o4S3_wx4/edit?usp=sharing)

## Moodle Imagen from Bitnami
**Oficial Documentation**: [Moodle by Bitnami](https://github.com/bitnami/containers/tree/main/bitnami/moodle#bitnami-lms-powered-by-moodle-lms)

Packages installed by Bitnami Dockerfile:
- "php-8.1.28-4-linux-${OS_ARCH}-debian-12"
- "apache-2.4.59-0-linux-${OS_ARCH}-debian-12"
- "postgresql-client-13.14.0-2-linux-${OS_ARCH}-debian-12"
- "mysql-client-11.3.2-2-linux-${OS_ARCH}-debian-12"
- "libphp-8.1.28-0-linux-${OS_ARCH}-debian-12"
- "moodle-4.4.0-0-linux-${OS_ARCH}-debian-12"

### Moodle Environment Variables
- `MOODLE_DATABASE_USER`: Database user name. Must be the same as `MARIADB_USER`.
- `MOODLE_DATABASE_PASSWORD`: Database user password. Must be the same as `MARIADB_PASSWORD`.
- `MOODLE_DATABASE_HOST`: The host of the Moodle database.
- `MOODLE_DATABASE_TYPE`: The type of the Moodle database.
- `MOODLE_DATABASE_NAME`: The name of the Moodle database.
- `MOODLE_USERNAME`: The username for Moodle admin.
- `MOODLE_PASSWORD`: The password for Moodle admin.
- `EXTRA_LOCALES`: Additional locales to be installed in the Moodle container. Example: `es_ES.UTF-8 UTF-8`.

These environment variables are set using Kubernetes secrets (`moodle-secret`).

## MariaDB Imagen from Bitnami
**Offical Documentation**: [MariaDB by Bitnami](https://github.com/bitnami/containers/tree/main/bitnami/mariadb)

### MariaDB Environment Variables
- `MARIADB_ROOT_USER`: MariaDB database root user.
- `MARIADB_ROOT_PASSWORD`: MariaDB database root user password.
- `MARIADB_USER`: MariaDB database user to create during the first initialization. 
- `MARIADB_PASSWORD`: Password for the MariaDB database user to create during the first initialization. 
- `MARIADB_DATABASE`: MariaDB database to create during the first initialization.
- `MARIADB_SKIP_TEST_DB`: Whether to skip creating the test database.
- `MARIADB_ENABLE_SLOW_QUERY`: Whether to enable slow query logs.  "1" to set.
- `MARIADB_LONG_QUERY_TIME`: How much time, in seconds, defines a slow query.

These environment variables are set using Kubernetes secrets (`mariadb-secret`).

# Google Cloud Cluster
Create the cluster:
``` console
gcloud container clusters create-auto moodle --location=europe-southwest1
```
# Public Moodle IP:
    http://34.175.137.8
