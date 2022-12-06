kubectl apply -f service.yaml -f deployment.yaml

kubectl get svc -l project=snackbar -n snackbar -o wide

kubectl get endpoints -n snackbar

export ORDER=<service-external-ip>

curl http://$ORDER/menus

curl --request POST http://$ORDER/checkout \
--header 'Content-Type: application/json' \
--data-raw '{
    "Pizza": 1,
    "Coke": 1,
    "Burger": 0,
    "Juice": 0    
}'

kubectl delete all -l project=snackbar -n snackbar