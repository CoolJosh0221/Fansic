FROM python:3.10.9-slim-buster
WORKDIR /bot
RUN apt-get update \
&& apt-get install -y --no-install-recommends git \
&& apt-get purge -y --auto-remove \
&& rm -rf /var/lib/apt/lists/*
COPY . /bot
RUN pip install poetry \
&& poetry config virtualenvs.create false \
&& poetry install --no-dev
CMD python -u botcmds.py