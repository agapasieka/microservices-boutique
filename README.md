## Create a minikube cluster
````
minikube start
````
## Deploy the online boutique to Minikube
````
kubectl apply -f manifests/
````
## Enable the NGINX Ingress controller
````
minikube addons enable ingress
````
Verify that the NGINX Ingress controller is running
````
kubectl get pods -n ingress-nginx
````
The output is similar to:
````
NAME                                        READY   STATUS      RESTARTS    AGE
ingress-nginx-admission-create-g9g49        0/1     Completed   0          11m
ingress-nginx-admission-patch-rqp78         0/1     Completed   1          11m
ingress-nginx-controller-59b45fb494-26npt   1/1     Running     0          11m
````
## Start minikube tunnel
To get ingress to work you’ll need to open a new terminal and run minikube tunnel
````
minikube tunnel
````
From within a new terminal, invoke the following command
````
curl --resolve "online-boutique.example:80:127.0.0.1" -i http://online-boutique.example
````

Optionally, you can also visit online-boutique.example from your browser.

Add a line to the bottom of the /etc/hosts file on your computer (you will need administrator access):
````
127.0.0.1 online-boutique.example
````

 