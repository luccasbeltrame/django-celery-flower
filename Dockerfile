FROM python:latest

COPY djangocelery /djangocelery
COPY app /app
COPY celery /celery
COPY requirments.txt /
COPY manage.py /

RUN pip install -r requirments.txt
