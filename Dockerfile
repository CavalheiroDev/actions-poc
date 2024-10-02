FROM python:3.9-slim-buster

RUN apt-get update

WORKDIR /usr/src/app

ENV PYTHONUNBUFFERED=1

RUN pip install pandas SQLAlchemy pydantic

