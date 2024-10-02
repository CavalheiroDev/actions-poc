FROM python:3.9-slim-buster AS dependencies

RUN apt-get update

ENV PYTHONUNBUFFERED=1

COPY pyproject.toml poetry.lock ./

RUN pip install poetry && \
    poetry export -f requirements.txt -o requirements.txt --without-hashes && \
    pip uninstall poetry -y

FROM dependencies

WORKDIR /usr/src/app

RUN pip install -r requirements.txt
