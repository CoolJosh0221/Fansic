FROM python:3.10-slim-buster
WORKDIR /bot
COPY requirements.txt /bot/
RUN apt-get update \
&& apt-get install -y --no-install-recommends git \
&& apt-get purge -y --auto-remove \
&& rm -rf /var/lib/apt/lists/*
COPY . /bot
CMD python3.10 -u botcmds.py