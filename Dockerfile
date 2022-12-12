FROM python:3.7-slim as production

ENV PYTHONBUFFERED=1
WORKDIR /app/

COPY requirements/prod.txt ./requirements/prod.txt
RUN pip install -r ./requirements/prod.txt

COPY manage.py ./manage.py
COPY mywebsite ./mywebsite

EXPOSE 8000