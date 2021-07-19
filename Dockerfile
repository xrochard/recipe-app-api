# indicate the base image (python on a ligth Linux OS: alpine)
FROM python:3.9.6-alpine

# indicate that python should not buffer the output, to avoid weird behaviors)
ENV PYTHONUNBUFFERED 1

# ./requirements.txt holds the list of the python libraries
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

# ./app holds the source code
RUN mkdir /app
# indicate the default start directory in Docker
WORKDIR /app
COPY ./app /app

# create a user to run the appp; -D means this user can only run the app, he doesn't have a home directoory and cannot log in
RUN adduser -D user
# switch Docker to user (the name of the user) and avoid running the app as root
USER user
