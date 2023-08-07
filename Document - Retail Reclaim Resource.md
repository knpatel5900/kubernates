# pvc-pv.yaml

    apiVersion: v1
    kind: PersistentVolumeClaim
    metadata:
      name: kplabs-pvc
    spec:
      accessModes:
      - ReadWriteOnce
      resources:
        requests:
          storage: 5Gi
      volumeName: "pvc-31a92a51-e693-41b4-ad9c-6c53329f98f2"
      storageClassName: do-block-storage
