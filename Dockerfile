FROM python:3.4

RUN groupadd -r uwsgi && useradd -r -g uwsgi uwsgi
RUN pip install Flask 
RUN pip install requests
WORKDIR /app
copy app /app

EXPOSE 9090 9091
USER uwsgi

CMD ["python", "identidock.py"]
