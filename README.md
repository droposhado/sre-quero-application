# sre-quero-application

Esta é uma aplicação dummy com o objetivo de:

- returnar o `status code` baseado no `path` da requisição.;
- os `status codes` são `>= 100` até `<= 599`;
- gerar arquivo de log de request (`access.log`) na pasta c/var/log/app`.

## Uso

```bash
$ docker run quay.io/droposhado/application:latest -v ./log:/var/log/app -p 8080:8080
$ curl -v localhost:8080/200
$ curl -v localhost:8080/300
$ curl -v localhost:8080/400
$ curl -v localhost:8080/500
```

## License

See [LICENSE](LICENSE)
