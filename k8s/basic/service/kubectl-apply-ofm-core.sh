SHELL_FOLDER=$(cd "$(dirname "$0")";pwd)
kubectl apply -f $SHELL_FOLDER/ofm-core.yaml --record