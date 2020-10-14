SHELL_FOLDER=$(cd "$(dirname "$0")";pwd)
kubectl delete -f $SHELL_FOLDER/ofm-core.yaml