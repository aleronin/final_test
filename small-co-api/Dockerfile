FROM python:3.8.1-slim

LABEL maintainer="aleksey.eronin96@gmail.com"

WORKDIR /api

RUN apt-get update \
    && apt-get install --no-install-recommends -y \
        curl \
        build-essential

RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/install-poetry.py | python -

ENV PATH /root/.local/bin:$PATH

ENV S3_BUCKET="arn:aws:s3:::s3-bucket-final-test-eronin"

COPY . /api

RUN poetry env use python3.8

RUN poetry install

RUN make .venv

RUN make run_prod
