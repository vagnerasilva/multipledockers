FROM python:2.7

COPY ./img2/requirements.txt requirements.txt

RUN apt-get update && \
    apt-get install -y sudo

RUN python --version