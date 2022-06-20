#!/bin/sh

echo "Starting app..."
python3 web/manage.py runserver 0.0.0.0:8000

exec "$@"