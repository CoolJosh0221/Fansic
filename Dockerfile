FROM fnndsc:python-poetry
WORKDIR /bot
RUN apt-get update \
&& apt-get install -y --no-install-recommends git \
&& apt-get purge -y --auto-remove \
&& rm -rf /var/lib/apt/lists/*
COPY . /bot
RUN poetry shell
RUN poetry install
CMD python -u botcmds.py