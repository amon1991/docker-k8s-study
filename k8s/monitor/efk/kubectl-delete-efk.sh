SHELL_FOLDER=$(cd "$(dirname "$0")";pwd)
kubectl delete -f $SHELL_FOLDER/es-service.yaml
kubectl delete -f $SHELL_FOLDER/es-statefulset.yaml

kubectl delete -f $SHELL_FOLDER/fluentd-es-configmap.yaml
kubectl delete -f $SHELL_FOLDER/fluentd-es-ds.yaml

kubectl delete -f $SHELL_FOLDER/kibana-rbac.yaml
kubectl delete -f $SHELL_FOLDER/kibana-service.yaml
kubectl delete -f $SHELL_FOLDER/kibana-deployment.yaml

kubectl delete -f $SHELL_FOLDER/es-pvc.yaml
kubectl delete -f $SHELL_FOLDER/es-pv.yaml