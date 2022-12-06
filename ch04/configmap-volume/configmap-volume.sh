kubectl create configmap nginx-config --from-file=configs

kubectl get configmap nginx-config -o yaml

kubectl apply -f web-server.yaml

kubectl get pod

kubectl port-forward web-server 8080:80

localhost:8080/myapp

kubectl exec web-server -- tail -10f /var/log/nginx/host.access.log

kubectl exec web-server -c nginx -- ls /etc/nginx/conf.d
kubectl exec web-server -c nginx -- cat /etc/nginx/conf.d/sever.conf

kubeclt delete pod web-server
kubectl delete pod my-app
kubectl delete svc my-app
kubectl delete configmap nginx-config