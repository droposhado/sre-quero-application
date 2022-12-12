# sre-quero-application

Esta é uma aplicação dummy com o objetivo de returnar o `status code` baseado no `path` da requisição. 
Os `status codes` retornados são do intervalo `status code >= 100` até `status code <= 599`.

```bash
$ ./local.sh
$ curl -v localhost:8080/200
$ curl -v localhost:8080/300
$ curl -v localhost:8080/400
$ curl -v localhost:8080/500
```


## Uso

```bash
$ docker run quay.io/droposhado/application:latest -v ./log:/var/log/app -p 8080:8080
```

## License

See [LICENSE](LICENSE)
