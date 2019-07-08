FROM python:3.5
# set PYTHONUNBUFFERED so output is displayed in the Docker log
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
#create folder in a docker container
RUN mkdir project/
# copy dependencies to new folder in docker container
COPY ./web/requirements.txt /project/requirements.txt
# set work dir
WORKDIR /project/
#install dependencies
# RUN pip install pip -U
# RUN apt-get update

RUN pip install  --upgrade pip && pip install -r  requirements.txt
#mount local folder to docker folder
ADD ./web /project/


# RUN adduser -D  valera
#for windows
#RUN adduser --disabled-login  valera
# USER valera