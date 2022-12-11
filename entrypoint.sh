#!/bin/bash

"/venv/bin/activate"

gunicorn -w 2 -t 260 -b :8080 app:app --access-logfile /var/log/app.log \
         --access-logformat '%(h)s %(l)s %(u)s %(t)s "%(r)s" %(s)s %(b)s "%(f)s" "%(a)s" %(T)s'
