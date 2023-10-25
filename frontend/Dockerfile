FROM tiangolo/uvicorn-gunicorn-fastapi:python3.8

WORKDIR /app
COPY . /app/
COPY templates /app/templates
COPY app.py /app/app.py
COPY requirements.txt /app/requirements.txt
COPY entrypoint.sh /app/entrypoint.sh

WORKDIR /app/


RUN apt-get update && \
    apt-get install -y \
    build-essential \
    python3-dev \
    python3-setuptools \
    gcc

RUN apt-get update

RUN python3 -m venv /opt/venv

RUN /opt/venv/bin/pip install gunicorn
RUN /opt/venv/bin/pip install -r /app/requirements.txt

RUN chmod +x entrypoint.sh
CMD ["./entrypoint.sh"]