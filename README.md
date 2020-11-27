# django-celery-flower
Basic system for test queue with rabbitMq

# running with docker 

- docker-compose up

# running with k8s

- Change url ampq in configmap and command flower
- kubectl apply -f . 

# testing 

for X in `seq 1000`; do curl -Ik -w "HTTPCode=%{http_code} TotalTime=%{time_total}\n" http://127.0.0.1:8000/celerytask/ -so /dev/null; done

see queue increase.

;D