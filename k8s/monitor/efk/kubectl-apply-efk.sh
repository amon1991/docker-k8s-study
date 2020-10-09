rm -rf /var/log/journald-*
sleep 3
SHELL_FOLDER=$(cd "$(dirname "$0")";pwd)
kubectl apply -f $SHELL_FOLDER/es-pv.yaml
kubectl apply -f $SHELL_FOLDER/es-pvc.yaml
kubectl apply -f $SHELL_FOLDER/es-service.yaml
kubectl apply -f $SHELL_FOLDER/es-statefulset.yaml

kubectl apply -f $SHELL_FOLDER/fluentd-es-configmap.yaml
kubectl apply -f $SHELL_FOLDER/fluentd-es-ds.yaml

kubectl apply -f $SHELL_FOLDER/kibana-rbac.yaml
kubectl apply -f $SHELL_FOLDER/kibana-service.yaml
kubectl apply -f $SHELL_FOLDER/kibana-deployment.yaml