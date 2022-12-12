FROM python:3.10-alpine3.17

ENV PATH="/venv/bin:${PATH}"
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY . .

RUN apk add alpine-sdk && \
    pip install -r requirements.txt

EXPOSE 8080

ENTRYPOINT ["./entrypoint.sh"]
