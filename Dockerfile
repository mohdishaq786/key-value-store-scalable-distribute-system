FROM python:3.11-alpine3.17

COPY . .
RUN pip install -r requirements.txt

EXPOSE 8080
WORKDIR src
RUN chmod +x run.sh
CMD ["/bin/sh", "-c", "./run.sh"]
