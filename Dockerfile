FROM ubuntu:latest

# update
RUN apt-get update -y
RUN apt-get upgrade -y

# install package
# # python
RUN apt-get install python3 python3-dev -y
# # pip
RUN apt-get install python3-pip -y

# link
# # python
RUN ln -s /usr/bin/python3 /usr/bin/python
# # pip
RUN ln -s /usr/bin/pip3 /usr/bin/pip

RUN mkdir /flask_app

WORKDIR /flask_app

COPY *.py /flask_app
COPY static/ /flask_app/static/
COPY templates/ /flask_app/templates/
COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

EXPOSE 5000
