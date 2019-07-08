FROM python:3.7-alpine
# set PYTHONUNBUFFERED so output is displayed in the Docker log
ENV PYTHONUNBUFFERED 1
#create folder in a docker container
RUN mkdir code/
# copy dependencies to new folder in docker container
COPY ./web/requirements.txt /code/requirements.txt
# set work dir
WORKDIR /code/
#install dependencies
RUN pip install -r requirements.txt
#mount local folder to docker folder
ADD ./web /dd_app/


# RUN adduser -D  valera
#for windows
#RUN adduser --disabled-login  valera
# USER valera