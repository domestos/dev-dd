FROM python:3.7-alpine
#need read about it
ENV PYTHONUNBUFFERED 1
RUN mkdir dd_app/
COPY ./requirements.txt dd_app/requirements.txt
WORKDIR /dd_app/
RUN pip install -r requirements.txt
ADD ./app /dd_app/

# RUN adduser --disabled-login  valera
# USER valera