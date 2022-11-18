FROM python:3.8-alpine

RUN apk update
RUN pip install --no-cache-dir pipenv

RUN apk add git

WORKDIR /usr/src/app

RUN git clone git@github.com:Unf0rgiv3n/minimal-web-app.git

EXPOSE 80
ENTRYPOINT ["/usr/src/app/src/bootstrap.sh"]
