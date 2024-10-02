FROM python:3.9-slim-buster AS dependencies

RUN apt-get update

ENV PYTHONUNBUFFERED=1

RUN pip install poetry

FROM dependencies

WORKDIR /usr/src/app

COPY pyproject.toml poetry.lock ./


RUN poetry config virtualenvs.create false && \
    poetry install
