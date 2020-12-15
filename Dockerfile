from python:3.7-alpine
maintainer Felipe

env PYTHONUNBUFFERED 1
copy ./requeriments.txt /requeriments.txt
run pip install -r /requeriments.txt

run mkdir /app
workdir /app
copy ./app /app

run adduser -D user
user user

