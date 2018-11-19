kops edit ig master-ap-south-1a
kops edit ig nodes
ls
sudo vim datadog-serviceaccount.yaml
ls
vim datadog-serviceaccount.yaml 
kubectl create -f datadog-serviceaccount.yaml 
ls
sudo vim datadog-agent.yaml
kubectl create -f datadog-agent.yaml 
kubectl get daemonset
kubectl get pods
kubectl get pods -o wide
kubectl get deploy -o wide
kubectl get svc -o wide
curl localhost
curl localhost:44
curl localhost:443
curl 100.96.2.4
ls
vim datadog-agent.yaml 
kubectl create -f datadog-agent.yaml 
kubectl update -f datadog-agent.yaml 
kubectl apply -f datadog-agent.yaml 
kubectl get deamonset
kubectl get daemonset
datadog-agent launch-gui
kubectl get nodes
kubectl get deamonset
kubectl get deaeonset
kubectl get daemonset
kubectl get svc
kubectl get pods
kubectl exec datadog-agent-4n66r service datadog-agent info
kubectl exec datadog-agent-4n66r -it 
kubectl exec datadog-agent-4n66r -it /bin/bash
kubectl exec datadog-agent-4n66r s6-svstat /var/run/s6/services/agent/
sudo service datadog-agent status
kubectl exec datadog-agent-4n66r s6-svstat /var/run/s6/services/agent/ -it
kubectl exec datadog-agent-4n66r -it agent status
ls
kubectl get pods
kubectl exec -it datadog-agent-ptrms agent status
kubectl get daemonset
ls
kubectl delete -f datadog-agent.yaml 
kubectl get daemonset
ls
kubectl getpods
kubectl get pods
aws s3
aws s3 ls
export KOPS_STATE_STORE=s3://clusters.kopstest.ml
kops get cluster
kubectl get nodes
kubectl get pods
helm
wget https://codeload.github.com/helm/helm/tar.gz/v2.11.0
ls
cd v2.11.0 
wget https://codeload.github.com/helm/helm/zip/v2.11.0
ls
cd v2.11.0.1 
vim v2.11.0.1 
rm v2.11.0 v2.11.0.1 
ls
ls
curl https://raw.githubusercontent.com/helm/helm/master/scripts/get > get_helm.sh
ls
chmod 700 get_helm.sh 
./get-helm.sh
helm
sh get_helm.sh 
helm
helm init
helm create datadog-monitoring
ls
cd datadog-monitoring/
ls
cd templates/
ls
helm delete datadog-monitoring
ls
cd ..
ls
helm delete datadog-monitoring
ls
helm ls
rm datadog-monitoring/
rm -R datadog-monitoring/
ls
terraform
ls
sudo vim dd-values.yaml
helm install --name datadog-monitoring -f my-values.yaml stable/datadog
helm install --name datadog-monitoring -f dd-values.yaml stable/datadog
vim dd-values.yaml 
helm install --name datadog-monitoring -f dd-values.yaml stable/datadog
vim dd-values.yaml 
helm install --name datadog-monitoring -f dd-values.yaml stable/datadog
vim dd-values.yaml 
helm install --name datadog-monitoring -f dd-values.yaml stable/datadog
ls
helm install --name datadog-monitoring --set datadog.apiKey=076168d926728b3465f41fad69c1919d --set datadog.appKey=66fd14bd8488f644f5be1a929d61b4cb2b4f0ab3     --set clusterAgent.enabled=true     --set clusterAgent.metricsProvider.enabled=true     stable/datadog
kubectl get ns
helm install --name datadog-monitoring --set datadog.apiKey=076168d926728b3465f41fad69c1919d --set datadog.appKey=66fd14bd8488f644f5be1a929d61b4cb2b4f0ab3     --set clusterAgent.enabled=true     --set clusterAgent.metricsProvider.enabled=true     stable/datadog --namespace=kube-system
helm install --name datadog-monitoring --set datadog.apiKey=076168d926728b3465f41fad69c1919d --set datadog.appKey=66fd14bd8488f644f5be1a929d61b4cb2b4f0ab3     --set clusterAgent.enabled=true     --set clusterAgent.metricsProvider.enabled=true     stable/datadog --namespace=default
helm install --name datadog-monitoring --set datadog.apiKey=076168d926728b3465f41fad69c1919d --set datadog.appKey=66fd14bd8488f644f5be1a929d61b4cb2b4f0ab3     --set clusterAgent.enabled=true     --set clusterAgent.metricsProvider.enabled=true     stable/datadog --namespace=kube-public
ls
vim datadog-agent.yaml 
kubectl create -f datadog-agent.yaml 
kubectl get pods
kubectl exec -it datadog-agent-966bn agent status
kubectl get daemonset
vim datadog-agent.yaml 
ls
ls
ls -l
vim datadog-agent.yaml 
kubectl get pods
kubectl cluster-info --namespace = default
kubectl get pods --namespace default
kubectl get pods --namespace kube-sytem
kubectl get pods --namespace kube-system
kubectl config current-context
helm install --name datadog-monitoring --set datadog.apiKey=076168d926728b3465f41fad69c1919d --set datadog.appKey=66fd14bd8488f644f5be1a929d61b4cb2b4f0ab3     --set clusterAgent.enabled=true     --set clusterAgent.metricsProvider.enabled=true     stable/datadog --namespace default
sudo vim namespace.yaml
kubectl get ns
kubectl create namespace.yaml 
ls
kubectl create -f namespace.yaml 
kubectl get ns
helm install --name datadog-monitoring --set datadog.apiKey=076168d926728b3465f41fad69c1919d --set datadog.appKey=66fd14bd8488f644f5be1a929d61b4cb2b4f0ab3     --set clusterAgent.enabled=true     --set clusterAgent.metricsProvider.enabled=true     stable/datadog --namespace test
helm install --name datadog-monitoring --set datadog.apiKey=076168d926728b3465f41fad69c1919d --set datadog.appKey=66fd14bd8488f644f5be1a929d61b4cb2b4f0ab3     --set clusterAgent.enabled=true     --set clusterAgent.metricsProvider.enabled=true     stable/datadog --namespace= test
helm install --name= datadog-monitoring --set datadog.apiKey=076168d926728b3465f41fad69c1919d --set datadog.appKey=66fd14bd8488f644f5be1a929d61b4cb2b4f0ab3     --set clusterAgent.enabled=true     --set clusterAgent.metricsProvider.enabled=true     stable/datadog --namespace test
helm install --name= datadog-monitoring --set datadog.apiKey=076168d926728b3465f41fad69c1919d --set datadog.appKey=66fd14bd8488f644f5be1a929d61b4cb2b4f0ab3     --set clusterAgent.enabled=true     --set clusterAgent.metricsProvider.enabled=true     stable/datadog --namespace= test
clear
ls
kops get cluster
kops delete cluster --state s3://clusters.kopstest.ml
ls -l
helm
ls
kubectl cluster-info
kubectl get nodes
kubectl get daemonset
kubectl get pods 
kubectl get pods
kubectl exec -it datadog-agent-gmmzx agent status
ls
kubectl get ns
kubectl get pods --namespace test
kubectl get pods --namespace kube-system
kubectl get pods --namespace default
helm install --name datadog-monitoring --set datadog.apiKey=076168d926728b3465f41fad69c1919d stable/datadog
helm create datadog-monitoring
ls
cd datadog-monitoring/
ls
cd charts/
ls
cd ..
vim chart.yaml
ls
sudo vim Chart.yaml 
vim values.yaml 
cd templates/
ls
kubectl get pods
kubectl get daemonset
vim datadog-agent.yaml 
vim dd-values.yaml 
vim datadog-serviceaccount.yaml 
vim dd-values.yaml 
ls -l
kubectl get nodes
kubectl get pods
vim datadog-agent.yaml 
ls
vim datadog-serviceaccount.yaml 
vim datadog-agent.yaml 
kubectl get pods
kubectl exec -it datadog-agent-966bn agent status
q!
helm create datadog-monitoring 
ls
cd datadog-monitoring/
ls
cd templates/
ls
vim deployment.yaml 
cd ..
vim values.yaml 
ls
sudo yum install docker
ls
docker
docker init
docker login --username omkar0409 --password Querty@169
yes
docker
sudo docker status
sudo docker start
docker login --username omkar0409
cd /var/run/docker/
ls
sudo docker login -u omkar0409
sudo service docker stop
sudo nohup docker daemon -H tcp://0.0.0.0:2375 -H unix:///var/run/docker.sock
docker
sudo docker run hello-world
sudo service docker start
docker login -u omkar0409
sudo docker login -u omkar0409
docker pull omkar0409/get-started
sudo docker pull omkar0409/get-started
sudo docker pull omkar0409/get-started:first
sudo docker images
sudo docker run 30f23360c06c 
ls
sh terraform 
sh terraform.s
./terraform
helm
helm version
kubectl version
./terraform version
kubectl get pods
kubectl get nodes
kubectl get daemonset
kubectl get svc
kubectl get deploy
kubectl get ing
kubectl get pv
kubectl get pvc
docker
sudo curl localhost:80
curl http://0.0.0.0:80/
ls
docker
sudo usermod -aG docker
sudo usermod -aG ec2-user
sudo docker imagesls
sudo docker images ls
sudo docker login -u omkar0409
sudo docker images ls
sudo usermod -aG ec2-user
sudo su
ls
sudo vim Dockerfile
sudo docker build -t custom-nginx .
sudo vim Dockerfile
sudo docker build -t custom-nginx .
sudo docker start
sudo service docker start
sudo service docker status
ls
mkdir static-html
ls
cd static-html/
sudo vim index.html
pwd
sudo vim Dockerfile
ls
mv Dockerfile ../
ls
cd ..
ls
sudo vim Dockerfile 
rm Dockerfile 
ls
cd static-html/
ls
pwd
ls
mv Dockerfile ../Dockerfile
ls
cd ..
sudo vim Dockerfile 
sudo docker build -t apache-httpd .
xls
ls
sudo vim Dockerfile 
sudo docker build -t apache-httpd .
sudo docker images
sudo docker push omkar0409/apache-httpd:latest
sudo docker push apache-httpd:latest
sudo docker login
sudo docker push apache-httpd:latest
sudo docker images ls
sudo docker images 
sudo docker ps
sudo docker rm 6ee683142f49
sudo docker stop 6ee683142f49
sudo docker rm 6ee683142f49
sudo docker ps
sudo docker images
sudo docker push 293da3faffef
sudo docker tag 293da3faffef omkar0409/apache-httpd:2.4
sudo docker images
sudo docker push omkar0409/apache-httpd
helm create apachehttpd
ls
cd apachehttpd/
ls
cd charts/
ls
cd ..
ls
vim Chart.yaml 
sudo vim values.yaml 
cd templates/
ls
sudo vim deployment.yaml 
cd ..
sudo vim values.yaml 
kubectl cluster-info
ls
cd ..
ls
cd apachehttpd/
ls
cd ..
helm install -n ApacheHTTPD apachehttpd/
kubectl get ns
kubectl config use-context test
kubectl config current-context
vim clusterrole.yaml
kubectl create sa tiller -n kube-system
vim clusterrolebinding.yaml
kubectl edit deployment -n kube-system tiller-deploy
kubectl get deploy
cd apachehttpd/
ls
vim values.yaml 
cd..
cd ..
kubectl edit deployment -n kube-system tiller-deploy
helm install -n ApacheHTTPD apachehttpd/
kubectl get sa
kubectl get sa --namespace kube-system
kubectl patch deploy --namespace kube-system tiller-deploy -p '{"spec":{"template":{"spec":{"serviceAccount":"tiller"}}}}'
helm install -n ApacheHTTPD apachehttpd/
helm install -n ApacheHTTPD apachehttpd/ --namespace kube-system
kubectl cluster-info
helm init
helm install -n ApacheHTTPD apachehttpd/
helm install -n ApacheHTTPD apachehttpd/ --namespace kube-system
echo $KUBECONFIG
kops get nodes
kops get nodes --state KOPS_STATE_STORE=s3://clusters.kopstest.ml
aws s3 ls
kops validate 
kops validate apsouth1.kopstest.ml
kops get cluster
export KOPS_STATE_STORE=s3://clusters.kopstest.ml
kops get cluster
kubectl get nodes
kubectl 
ls
vi datadog-agent.yaml 
vi Dockerfile 
ls
helm ls
helm init --upgrade
kubectl get pods
kubectl delete daemonset
kubectl get daemonset
kubectl delete daemonset datadog-agent
kubectl get pods
kubectl get nodes
kops get cluster
export  KOPS_STATE_STORE=s3://clusters.kopstest.ml
aws s3 ls
kops get cluster
kops edit ig nodes
kops edit ig master-ap-south-1a
kops edit ig nodes
kops update cluster
kops update cluster --yes
kops update cluster 
kops rolling-update cluster
kops rolling-update cluster --yes
ls
cd static-html/
ls
cd ..
cd datadog-monitoring/
ls
cd ..
cd apachehttpd/
ls
helm ls
kubectl get pods
helm
kubectl
cd ..
ls
cd datadog-monitoring/
ls
vi values.yaml 
ls
vi Chart.yaml 
cd templates/
ls
rm deployment.yaml service.yaml ingress.yaml 
ls
vi NOTES.txt 
vi _helpers.tpl 
ls
vim clusterrole.yaml
vim clusterrolebinding.yaml
vim confd-configmap.yaml
vim daemonset.yaml
vim datadog-configmap.yaml
ls
cd ..
helm install -n dd-monitoring datadog-monitoring/
ls
vi datadog-agent.yaml 
cd datadog-monitoring/
ls
vi Chart.yaml 
cd templates/
ls
vi clusterrole.yaml 
vi clusterrolebinding.yaml 
vi daemonset.yaml 
vi datadog-configmap.yaml 
vi confd-configmap.yaml 
cd ..
ls
helm install -n dd-monitoring datadog-monitoring/
cd datadog-monitoring/
ls
d templates/
cd templates/
ls
vi datadog-configmap.yaml 
docker
ls
vi datadog-configmap.yaml 
ls
helm 
ls
cd datadog-monitoring/
ls
cd templates/
ls
vi datadog-configmap.yaml 
vi confd-configmap.yaml 
vi clusterrole
vi clusterrole.yaml 
vi clusterrolebinding.yaml 
vi clusterrole.yaml 
vi clusterrolebinding.yaml 
helm create datadog-agent
ls
cd datadog-
cd datadog-agent/
ls
d templates/
ls
cd templates/
ls
vi service.yaml 
cd ..
ls
cd datadog-monitoring/
ls
cd ..
ls
cd datadog-monitoring/
ls
cd templates/
ls
rm datadog-agent/
rm -R datadog-agent/
ls
cd ..
helm create datadog
ls
cd datadog
ls
cd templates/
ls
rm deployment.yaml service.yaml ingress.yaml 
ls
cd ..
cp ../datadog-monitoring/templates/clusterrole.yaml .
ls
mv clusterrole.yaml templates/
ls
cd templates/
ls
cd ..
ls
cp ../datadog-monitoring/templates/clusterrolebinding.yaml templates/
cp ../datadog-monitoring/templates/daemonset.yaml templates/
cp ../datadog-monitoring/templates/confd-configmap.yaml templates/
cp ../datadog-monitoring/templates/datadog-configmap.yaml templates/
cd templates/
ls
cd ..
ls
vi values.yaml 
vi Chart.yaml 
ls
cd charts/
ls
cd ..
ls
cd ..
ls
helm install -n dd-monitor datadog/
cd datadog
ls
cd templates/
ls
vi daemonset.yaml 
ls
cd datadog-configmap.yaml 
vi datadog-configmap.yaml 
ls 
cd datadog
ls
cd templates/
ls
vi daemonset.yaml 
cd ..
ls
vi datadog-agent.yaml 
cd datadog
ls
cd templates/
ls
vi daemonset.yaml 
cd ..
helm install -n dd-monitor datadog/
ls
kops get cluster
export KOPS_STATE_STORE=s3://clusters.kopstest.ml
kops get cluster
kubectl get nodes
kubectl get pods
kubectl create -f datadog-agent.yaml 
kubectl get pods
git clone https://github.com/kubernetes/kube-state-metrics.git
kubectl get pods
kubectl exec -it datadog-agent-zvljb /bin/bash
ls
kubectl get pods
kubectl get pods -o wide
kubectl get nodes
kubectl get pods -namespace kube-syatem
kubectl get pods -namespace kube-system
kubectl get pods --namespace kube-system
kubectl get pods --namespace default
ls
mkdir kube-state-metrics
ls
cd kube-state-metrics/
ls
vi kube-state-metrics-cluster-role.yaml
vi kube-state-metrics-cluster-role-binding.yaml
vi kube-state-metrics-deployment.yaml
vi kube-state-metrics-role.yaml
vi kube-state-metrics-role-binding.yaml
vi kube-state-metrics-service.yaml
vi kube-state-metrics-service-account.yaml
cd ..
ls
cd kube-state-metrics/
ls
cd ..
kubectl apply -f kube-state-metrics/
kubectl get pods
kubectl exec -it datadog-agent-zvljb /bin/bash
kubectl get pods
kubectl exec -it datadog-agent-zvljb /bin/bash
ls
kubectl get pods
kubectl get nodes
kubectl get pods --namespace kubesystem
kubectl get pods --namespace kube-system
kubectl get deploy
kubectl get deployments 
kubectl get deployments --namespace kube-system
kubectl get pods
kubectl exec -it datadog-agent-zvljb /bin/bash
kubectl get pods
kubectl get nodes
kubectl get pods
kubectl exec -it datadog-agent-zvljb /bin/bash
ls
vim datadog-agent.yaml 
vim aaa.yaml
kubectl create -f datadog-agent.yaml 
kubectl create -f aaa.yaml 
kubectl get pods
kubectl get svc
kubectl get svc -o wide
kubectl get deploy
kubectl get daemonset 
ls
kubectl get pods
kubectl get pods -o wide
ls
vi datadog-agent.yaml 
export KOPS_STATE_STORE=s3://clusters.kopstest.ml
kops get cluster
k get pods
kubectl get pods
ls
cd kube-state-metrics/
ls
vi kube-state-metrics-deployment.yaml 
kubectl get pods
ls
cd kube-state-metrics/
ls
cd datado
cd ..
ls
cd datadog
ls
vi values.yaml 
cd ..
vi Dockerfile 
vi datadog-agent.yaml 
ls
vi datadog-agent.yaml 
cd kube-state-metrics/
ls
vi kube-state-metrics-deployment.yaml 
vi kube-state-metrics-role
vi kube-state-metrics-role.yaml 
vi kube-state-metrics-service.yaml 
vi kube-state-metrics-deployment.yaml 
cd ..
kubectl get pods
kubectl exec -it datadog-agent-zvljb /bin/bash
ls
ls
vim datadog-agent.yaml 
cd kube-state-metrics/
ls
vi kube-state-metrics-service
vi kube-state-metrics-service.yaml 
ls
kubectl get pods
kubectl exec -it datadog-agent-zvljb /bin/bash
ls
cd datadog
ls
vi Chart.yaml 
mkdir datadog-files
ls
rm -R datadog-files/
ls
cd ..
ls
mkdir datadog-files
ls
mv clusterrole.yaml datadog-agent.yaml datadog-serviceaccount.yaml datadog-files/
ls
cd datadog-files/
ls
cd ..
vi clusterrolebinding.yaml 
ls
mv clusterrolebinding.yaml datadog-files/
ls
cd datadog-monitoring/
ls
vi Chart.yaml 
ls
cd templates/
ls
vi datadog-configmap.yaml 
vi confd-configmap.yaml 
ls 
cd datadog-files/
ls 
vi clusterrole.yaml 
vi datadog-serviceaccount.yaml 
ls
vi datadog-agent.yaml 
kops get cluster
kops get cluster --state s3://clusters.kopstest.ml
kops update cluster
export KOPS_STATE_STORE=s3://clusters.kopstest.ml
kops update cluster
kops rolling-update cluster
kops rolling-update cluster --yes
kops rolling-update cluster
ls
vi namespace.yaml 
vi dashboard-adminuser.yaml 
cd apachehttpd/
ls
vi values.yaml 
cd ..
cd datadog-files/
ls
vi datadog-serviceaccount.yaml 
vi clusterrole.yaml 
vi clusterrolebinding.yaml 
ls
vi datadog-serviceaccount.yaml 
vi clusterrole.yaml 
vi clusterrolebinding.yaml 
vi datadog-agent.yaml 
cd ..
cd datadog-monitoring/
ls
cd templates/
ls
vi clusterrole.yaml 
vi clusterrolebinding.yaml 
vi daemonset.yaml 
ls
vi clusterrolebinding.yaml 
vi daemonset.yaml 
vi datadog-configmap.yaml 
vi confd-configmap.yaml 
cd ..
ls
vi values.yaml 
ls
cd datadog-monitoring/
ls
vi values.yaml 
ls
sudo yum update -y
ls
cd datadog-files/
ls
ls
ls
cd datadog-files/
ls
vi clusterrole.yaml 
vi clusterrolebinding.yaml 
vi clusterrole.yaml 
ls
vi clusterrolebinding.yaml 
vi datadog-serviceaccount.yaml 
ls
cd datadog-monitoring/
ls
cd templates/
ls
vi clusterrole
vi clusterrole.yaml 
vi clusterrolebinding.yaml 
ls
vi confd-configmap.yaml 
vi datadog-configmap.yaml 
ls
vi daemonset.yaml 
cd datadog-files/
ls
vi datadog-agent.yaml 
ls
vi clusterrolebinding.yaml 
vi clusterrole
vi clusterrole.yaml 
vi clusterrolebinding.yaml 
kubectl get pods
cd ..
cd datadog-monitoring/
ls
ls
cd datadog-monitoring/
ls
vi values.yaml 
ls
cd templates/
ls
vi clusterrolebinding.yaml 
cd ..
vi values.yaml 
cd templates/
vi daemonset.yaml 
cd ..
ls
cd templates/
ls
vi clusterrolebinding.yaml 
cd ..
vi values.yaml 
ls
cd templates/
ls vi clusterrole.yaml 
ls
vi clusterrole.yaml 
vi clusterrole-all.yaml
vi clusterrolebinding-all.yaml
vi clusterrole-all.yaml
cd ..
vi values.yaml 
ls
vi Chart.yaml 
cd ..
cd datadog
ls
vi Chart.yaml 
cd ..
ls
git init
git
sudo yum install git
git
git init
git status
git add datadog-monitoring/
git status
git commit -m "datadog-files" 
cd datadog-monitoring/
ls
git add
git status
git add .
git commit -m "datadog-files"
git commit -m "datadog-files" .
git add .
git commit -m "datadog-files" Chart.yaml charts/ templates/ values.yaml 
git push 
git login
git 
git status
cd ..
cd datadog-monitoring/
ls
vi values.yaml 
ls
vi Chart.yaml 
ls
cd templates/
ls
vi daemonset.yaml 
ls
vi confd-configmap.yaml 
vi datadog-configmap.yaml 
vi clusterrole-all.yaml 
vi clusterrolebinding-all.yaml 
sudo yum update -y
kops get cluster 
export KOPS_STATE_STORE=s3://clusters.kopstest.ml
kops get cluster 
kubectl get daemonset
kubectl get pods
kubectl get svc
kubectl get deploy
kubectl get ns
kubectl get configmap
kubectl get secret
kubectl get pods -all
kubectl get pods --all
kubectl get pods --namespace all
kubectl get pods --al
kubectl get pods --all
kubectl alias k
k=alias kubectl
ls
cd apachehttpd/
ls
vi Chart.yaml 
cd ..
cd datadog
ls
vi Chart.yaml 
cd ..
cd apachehttpd/
ls
vi values.yaml 
cd templates/
ls
vi deployment.yaml 
vi service.yaml 
cd ..
helm install --debug -n apachehttpd .
ls
vi values.yaml 
cd apachehttpd/
ls
vi Chart.yaml 
cd templates/
ls
vi ingress.yaml 
clear
ls
kubectl get pods
ls 
vi aaa.yaml 
ls
sudo yum update -y
ls
ls -l
cd static-html/
ls
vi index.html 
vi test-deploy.yaml
vi test-deploy.yaml
vi test-service.yaml
vi test-configmap.yaml
ls
mkdir test
mv test-configmap.yaml test-deploy.yaml test-service.yaml test/
ls
cd te
cd test/
ls
kubectl apply -f .
kubectl get pods
vi test-service.yaml 
kubectl create -f test-service.yaml 
vi test-service.yaml 
kubectl create -f test-service.yaml 
vi test-service.yaml 
kubectl create -f test-service.yaml 
vi test-service.yaml 
k get all
kubectl get all
kubectl get daemonset
kubectl delete daemonset/datadog-agent
k get all
kubectl get all
kubectl delete deployments/deploy-blue deployments/nginx
kubectl get all
kubectl delete service/nginx service/service-prod
kubectl get all
ls
cd ..
ls
vi aaa.yaml 
kubectl create -f aaa.yaml 
kubectl get pods
kubectl get pods -o wide
curl localhost
kubectl get svc -o wide
curl 100.67.193.237
kubectl get pods -o wide
curl 100.96.1.11
ls
cd te
ls
cd test/
ls
vi test-ingress.yaml
kubectl create test-ingress.yaml 
kubectl create test-ingress.yaml -f
ls
kubectl create -f test-ingress.yaml 
kubectl get ingress
kubectl get svc
vi test-service.yaml 
kubectl get ingress
export KOPS_STATE_STORE=s3://clusters.kopstest.ml
kops get cluster
kops rolling-update cluster
ls
vi aaa.yaml 
vi bbb.yaml
kubectl create -f bbb.yaml 
vi bbb.yaml
kubectl create -f bbb.yaml 
vi bbb.yaml
kubectl create -f bbb.yaml 
kubectl get all
curl 100.66.161.79:80
kubectl get pods -o wide
curl http://100.96.1.13
sudo yum update -y
ls
ls -ltr
cd test/
ls
kubectl get pods
kubectl get deploy
kubectl delete deplo
ls
kubectl get svc
curl 100.64.0.1:443
kubectl delete svc nginx kubernetes
ls
kubectl get svc
kubectl get pods
kubectl get configmap
ls
vi test-deploy.yaml 
cd ..
ls
vi aaa.yaml 
kubectl get all
kubectl create -f aaa.yaml 
kubectl get all
vi aaa.yaml 
curl 100.69.64.54:80
