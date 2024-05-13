deploy:
	helm install mariadb ./charts/mariadb && helm install moodle ./charts/moodle

delete:
	helm delete mariadb && helm delete moodle