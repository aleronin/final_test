FROM python:3.9

LABEL maintainer="aleksey.eronin96@gmail.com"

WORKDIR /api

RUN apt-get update \
    && apt-get upgrade -y \
    apt-get install -y curl

RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/install-poetry.py | python -

ENV PATH /root/.local/bin:$PATH

COPY . /api

RUN poetry env use python3.9

RUN poetry install

RUN make .venv

RUN make run_prod
