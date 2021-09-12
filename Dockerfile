FROM python:3-slim-bullseye

WORKDIR /usr/src/app

COPY requirements.txt /usr/src/app
COPY ping2mqtt /usr/src/app

RUN pip3 install -r requirements.txt

ENTRYPOINT ["python3", "ping2mqtt"]
