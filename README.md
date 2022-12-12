# sre-quero-application

Esta é uma aplicação dummy com o objetivo de:

- returnar o `status code` baseado no `path` da requisição;
- os `status codes` são `>= 100` até `<= 599`;
  - rota não encontrada retorna 404;
- gerar arquivo de log de request (`access.log`) na pasta `/var/log/app`.

## Stack

- [Flask](https://flask.palletsprojects.com);
- [gunicorn](https://gunicorn.org/).

## Formato do log

O formato do log é o padrão do [gunicorn](https://gunicorn.org/), com a adição da última coluna (`%(T)s`) com valor em segundos da requisição:

```
'%(h)s %(l)s %(u)s %(t)s "%(r)s" %(s)s %(b)s "%(f)s" "%(a)s" %(T)s'
```

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
