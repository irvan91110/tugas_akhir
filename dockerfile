FROM python:3.8.3-slim
LABEL maintainer="irvan9110@gmail.com"
COPY . ./usr/src/app
WORKDIR /usr/src/app

RUN apt-get update \
    && apt-get -y install libpq-dev gcc \
    && pip install psycopg2

RUN pip install -r requirements.txt 

<<<<<<< HEAD
EXPOSE 5000

=======
<<<<<<< HEAD
# # Add docker-compose-wait tool -------------------
# ENV WAIT_VERSION 2.7.2
# ADD https://github.com/ufoscout/docker-compose-wait/releases/download/$WAIT_VERSION/wait /wait
# RUN chmod +x /wait

EXPOSE 5000


=======
EXPOSE 5000

>>>>>>> 2fc3767 (before revision)
>>>>>>> 57a24e6 (before revisi)
ENTRYPOINT ["python"]
CMD [ "run.py" ]

# CMD ["flask","run","--debug"]