# snackbar namespace 생성
kubectl create namespace snackbar

kubectl get svc order -o wide -n snackbar

kubectl get svc payment -o wide -n snackbar

kubectl get endpoints -n snackbar

kubectl get svc order -o jsonpath="{.spec.clusterIP}" -n snackbar

curl $(kubectl get svc order -o jsonpath="{.spec.clusterIP}" -n snackbar)

kubectl port-forward service/order -n snackbar 8080:80

kubectl exec <order-pod> -n snackbar -- env | grep PAYMENT

kubectl exec <order-pod> -n snackbar -- env | grep ORDER

kubectl exec -it <order-pod> -n snackbar -- sh

curl $PAYMENT_SERVICE_HOST:$PAYMENT_SERVICE_PORT

# service 객체는 로드벨런싱을 해준다.
for i in `seq 1 10`; do curl -s $PAYMENT_SERVICE_HOST:$PAYMENT_SERVICE_PORT; done

kubectl exec -it <order-pod> -n snackbar -- curl -s payment:80

kubectl exec -it <order-pod> -n snackbar -- cat /etc/hosts

kubectl get all -n kube-system | grep kube-dns

kubectl exec <order-pod> -n snackbar -- cat /etc/resolv.conf

# 로드 벨런싱 확인
for i in `seq 1 10`; do curl -s payment:80; done

curl payment.snackbar.svc.cluster.local

curl payment.snackbar

# 80 포트가 아니면 포트를 써줘야한다.
curl payment