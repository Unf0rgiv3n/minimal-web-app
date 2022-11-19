FROM python:3.8-alpine

RUN apk update
RUN pip install --no-cache-dir pipenv

RUN apk add git

WORKDIR /usr/src/app

RUN git clone https://github.com/Unf0rgiv3n/minimal-web-app.git /usr/src/app
RUN chmod -R 777 /usr/src/app
RUN pip install -r ./src/requirements.txt

EXPOSE 80
#ENTRYPOINT ["sleep", "3600"]
ENTRYPOINT ["/usr/src/app/src/bootstrap.sh"]
