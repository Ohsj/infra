kubectl create configmap greeting-config --from-literal=STUDENT_NAME=오승주 --from-literal=MESSAGE=안녕

kubectl get configmap greeting-config -o yaml

kubectl apply -f hello-app.yaml

kubectl port-forward hello-app 8080:8080

kubectl delete pod hello-app

# 2

kubectl apply -f hello-app2.yaml

kubectl port-forward hello-app 8080:8080

kubectl delete pod hello-app

kubectl delete config greeting-config

# 3

kubectl create configmap greeting-config --from-file=configs

kubectl get configmap greeting-config -o yaml

kubectl apply -f hello-app3

kubectl port-forward hell-app 8080:8080

curl localhost:8080

# 4

