#!/bin/bash

APP_PORT=${PORT:-8000}

CPU_THREADS=$(nproc)

WORKERS=$((CPU_THREADS*2+1))

/opt/venv/bin/gunicorn -k uvicorn.workers.UvicornWorker app:app --bind "0.0.0.0:${APP_PORT}"
