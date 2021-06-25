FROM devilldon/py3-alpine
WORKDIR /BOT
RUN chmod -R 777 /BOT
RUN apk add --no-cache --virtual .build-deps g++ libffi-dev openssl-dev python3-dev git wget pv jq wget ffmpeg mediainfo
COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt
COPY . .
