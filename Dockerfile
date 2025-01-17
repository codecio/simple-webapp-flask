FROM ubuntu:20.04
RUN apt update -y && apt install -y python3 python3-pip
RUN pip3 install flask
COPY app.py /opt/
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080
