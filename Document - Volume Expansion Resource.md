
pod-pv.yaml

---
kind: Pod
apiVersion: v1
metadata:
  name: storage-pod
spec:
  containers:
    - name: my-frontend
      image: busybox
      command:
        - sleep
        - "36000"
      volumeMounts:
      - mountPath: "/data"
        name: my-do-volume
  volumes:
    - name: my-do-volume
      persistentVolumeClaim:
        claimName: kplabs-pvc
pvc.yaml

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
  storageClassName: do-block-storage


External Commands Used:

kubectl edit pvc kplabs-pvc
kubectl exec storage-pod -- sh
df -h
