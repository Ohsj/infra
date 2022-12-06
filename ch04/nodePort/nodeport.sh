kubectl apply -f deployment.yaml -f service.yaml

kubectl get all -l project=snackbar -n snackbar

kubectl get svc -l project=snackbar -n snackbar -o wide

kubectl get endpoints -n snackbar

curl <ClusterIP>:<port>

gcloud compute firewall-rules create order --allow tcp:31592

gclude config set project <project-id>

kubectl get nodes -o wide

export ORDER=<node-external-ip>:<node-port>

curl http://$ORDER/menus

curl --request POST http://$ORDER/checkout \
--header 'Content-Type: application/json' \
--data-raw '{
    "Pizza": 1,
    "Coke": 1,
    "Burger": 0,
    "Juice": 0    
}'

gcloud compute firewall-rules list

gcloud compute firewall-rules delete order

kubectl delete all -l project=snackbar -n snackbar