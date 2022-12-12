#!/bin/sh

gunicorn -w 2 -t 260 -b :8080 app:app --access-logfile /var/log/app-access.log \
         --access-logformat '%(h)s %(l)s %(u)s %(t)s "%(r)s" %(s)s %(b)s "%(f)s" "%(a)s" %(T)s'
