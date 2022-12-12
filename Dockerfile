FROM python:3.10-alpine3.17

WORKDIR /app

COPY . .

RUN apk add alpine-sdk && \
    pip install -r requirements.txt

VOLUME /var/log/app
EXPOSE 8080

ENTRYPOINT ["./entrypoint.sh"]
