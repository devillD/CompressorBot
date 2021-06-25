FROM devilldon/py3-alpine
WORKDIR /BOT
RUN chmod -R 777 /BOT
RUN apk add --no-cache --virtual python3-dev git wget pv jq wget ffmpeg mediainfo
RUN pip3 install --no-cache --upgrade pip wheel setuptools
COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt
COPY . .
