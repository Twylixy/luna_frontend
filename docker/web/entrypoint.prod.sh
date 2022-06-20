#!/bin/sh

echo "Collect static files"
python3.9 ./web/manage.py collectstatic --no-input

echo "Starting server"
gunicorn --bind 0.0.0.0:8000 --chdir ./web web.wsgi:application

exec "$@"