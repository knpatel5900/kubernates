# Generating Secret Based on Generic - Literal Value

    kubectl create secret generic firstsecret --from-literal=dbpassword=mypassword123

## Generating Secret Based on Generic - File

    kubectl create secret generic secondsecret --from-file=./credentials.txt

## To View Secret from CLI

    kubectl get secret firstsecret -o yaml


## YAML File

## secret-data.yaml

    apiVersion: v1
    kind: Secret
    metadata:
      name: thirdsecret
    type: Opaque
    data:
      username: ZGJhZG1pbg==
      password: bXlwYXNzd29yZDEyMw==
    
## secret-stringdata.yaml

    apiVersion: v1
    kind: Secret
    metadata:
      name: thirdsecret
    type: Opaque
    data:
      username: ZGJhZG1pbg==
      password: bXlwYXNzd29yZDEyMw==
