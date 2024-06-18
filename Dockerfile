FROM python:3.10.9-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y

COPY requirements.txt /requirements.txt

RUN mkdir /Clone
WORKDIR /Clone
RUN git --version
RUN pip3 install -U pip
RUN git clone https://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:x-oauth-basic@github.com/ihyvesta/Pyrogram /tmp/pyrogram
COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["/bin/bash", "/start.sh"]
