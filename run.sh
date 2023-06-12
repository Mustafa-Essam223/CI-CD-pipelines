kubectl create serviceaccount -n jenkins jenkins-deployer
kubectl apply -f jenkins
kubectl create clusterrolebinding cluster-admin-jenkins-rolebinding  --clusterrole cluster-admin --serviceaccount jenkins:jenkins-deployer
kubectl get all -n jenkins
