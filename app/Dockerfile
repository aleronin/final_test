FROM python:3.8.10-alpine

LABEL maintainer="aleksey.eronin96@gmail.com"

WORKDIR /app

COPY requirements.txt /app

RUN pip install --no-cache-dir -r requirements.txt

COPY app.py /app

ENTRYPOINT [ "python" ]

CMD [ "./app.py" ]
