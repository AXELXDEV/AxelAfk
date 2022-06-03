FROM python:3.9.7-slim-buster
RUN apt-get update && apt-get upgrade -y
RUN apt-get install git -y
RUN pip3 install -U pip
COPY . /Yukki/
WORKDIR /Yukki/
RUN pip3 install -U -r requirements.txt 
CMD python3 -m Yukki
