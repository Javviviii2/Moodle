deploy:
	helm install mariadb ./charts/mariadb && helm install moodle ./charts/moodle

delete:
	helm delete mariadb && helm delete moodle

docker-context:
	kubectl config use-context docker-desktop
get-contexts:
	kubectl config get-contexts
cloud-context:
	kubectl config use-context gke_moodle-424918_europe-west1_moodle  
create-cluster:
	gcloud container clusters create-auto moodle --location=europe-southwest1