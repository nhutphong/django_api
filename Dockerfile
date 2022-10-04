FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code

ADD requirements.txt /code/
RUN pip3 install -r requirements.txt


ENTRYPOINT echo "${PATH}"

COPY . /code/
RUN chmod u+x /code/entrypoint.sh
ENTRYPOINT ["/code/entrypoint.sh"]