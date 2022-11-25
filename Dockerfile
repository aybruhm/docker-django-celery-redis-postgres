# pull official base image
FROM python:3.8

RUN mkdir /project_name

# set work directory
WORKDIR /project_name

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install dependencies
RUN pip install --upgrade pip
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

# copy project
COPY . .
