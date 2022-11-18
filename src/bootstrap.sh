#!/bin/sh
export FLASK_APP=./minimumapp.py
pipenv run flask --debug run -h 0.0.0.0 --port 80
