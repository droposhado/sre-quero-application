FROM python:3.10-alpine3.17 AS builder

ENV PATH="/venv/bin:$PATH"

COPY . .

RUN apk add alpine-sdk && \
    python -m venv /venv && chmod +x /venv/bin/activate && \
    /venv/bin/activate && \
    pip install -r requirements.txt


FROM alpine:3.17

#FROM python:3.10-alpine3.17 AS builder

ARG USERNAME=app
ENV USERNAME=$USERNAME

ENV PATH="/venv/bin:${PATH}"
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY . .

RUN apk add bash && adduser -DH $USERNAME

COPY --from=builder /venv /venv
#COPY --from=builder --chown=$USERNAME:$USERNAME /venv /venv

USER $USERNAME

RUN ls -lha /bin/ && ls -lha /app && ls -lha /venv/bin && cat /app/entrypoint.sh

EXPOSE 8080

ENTRYPOINT ["/app/entrypoint.sh"]
