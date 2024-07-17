FROM python:3.11.8-slim

WORKDIR /app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY requirements.txt .

RUN pip --disable-pip-version-check --no-cache-dir install -r requirements.txt && rm -rf /tmp/pip-tmp

ENTRYPOINT ["tensorboard", "--logdir=runs"]