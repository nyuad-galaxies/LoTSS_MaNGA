FROM python:3.9
COPY ./requirements.txt /code/
RUN cd /code \
    && apt-get update -qq \
    && apt-get install postgresql-client -qq \
    && pip install -U pip \
    && pip install ipython \
    && pip install -r requirements.txt

WORKDIR /code