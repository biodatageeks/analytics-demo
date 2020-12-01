# analytics-demo
```
helm dependency update
helm package .
helm install demo --values values.yml demo-0.1.0.tgz

helm upgrade demo --values values.yml demo-0.1.0.tgz
```

#Port forwarding
```
export POD_NAME=$(kubectl get pods --namespace default -l "app=superset" -o jsonpath="{.items[0].metadata.name}")
kubectl port-forward $POD_NAME 9000 --namespace default
```
