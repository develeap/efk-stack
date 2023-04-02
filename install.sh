#!/usr/bin/env bash

POSITIONAL_ARGS=()
while [[ $# -gt 0 ]]; do
  case $1 in
    -n|--namespace)
      NAMESPACE="$2"
      shift # past argument
      shift # past value
      ;;
    -p|--password)
      KIBANA_PWD="$2"
      shift # past argument
      shift # past value
      ;;
     -x|--extra-arg)
      EXTRA_ARGS+=("$2")
      shift # past argument
      shift # past value
      ;;
    -*|--*)
      echo "Unknown option $1"
      exit 1
      ;;
    *)
      POSITIONAL_ARGS+=("$1") # save positional arg
      shift # past argument
      ;;
  esac
done

set -- "${POSITIONAL_ARGS[@]}" # restore positional parameters

if [[ -n $1 ]]; then
    echo "Last line of file specified as non-opt/last argument:"
    tail -1 "$1"
fi

if [ -z "${NAMESPACE}" ] || [ -z "${KIBANA_PWD}" ]; then
    echo "USAGE: ./install.sh -n NAMESPACE -p KIBANA_PWD -x extraarg=value"
    exit 1
fi

helm repo add elastic https://helm.elastic.co
helm repo update
kubectl create ns ${NAMESPACE}
helm upgrade --install elastic-operator elastic/eck-operator -n ${NAMESPACE}
helm_cmd="helm upgrade --install efk-stack efk-stack/ -n ${NAMESPACE} --set kibana.password=${KIBANA_PWD}"
for extra_arg in "${EXTRA_ARGS[@]}"; do
  helm_cmd+=" --set ${extra_arg}"
done
eval "$helm_cmd"
