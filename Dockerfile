# Don't Remove Credit @VJ_Bots
# Subscribe YouTube Channel For Amazing Bot @Tech_VJ
# Ask Doubt on telegram @KingVJ01

FROM python:3.10-slim-bookworm

RUN apt-get update \
    && apt-get install -y --no-install-recommends git \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt /requirements.txt

RUN pip3 install --no-cache-dir -U pip \
    && pip3 install --no-cache-dir -U -r /requirements.txt

RUN mkdir /VJ-File-Store
WORKDIR /VJ-File-Store
COPY . /VJ-File-Store

CMD ["python", "bot.py"]
