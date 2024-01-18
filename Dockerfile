FROM python:3.11-slim as base

RUN apt-get update && apt-get install -y git

COPY requirements.txt /
RUN pip install --no-cache-dir -r /requirements.txt

RUN mkdir /app
WORKDIR /app
ADD . /app

CMD python main.py