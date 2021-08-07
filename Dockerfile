FROM python:3.7.3-slim

# copy the reuirements to install
COPY requirements.txt /

# run the program
RUN pip install -r /requirements.txt

COPY  . /app
WORKDIR /app
ENTRYPOINT [ "./gunicorn_starter.sh"]

