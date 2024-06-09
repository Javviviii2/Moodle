allow_k8s_contexts('docker-desktop')
#
k8s_yaml(helm('./charts/moodle/'))
k8s_yaml(helm('./charts/mariadb/'))
k8s_yaml('./.secrets/moodle-secret-file.yaml')
k8s_yaml('./.secrets/mariadb-secret-file.yaml')

