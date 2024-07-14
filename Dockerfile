FROM python:3.12-slim-bullseye
RUN apt-get update && apt-get install --no-install-recommends -y git && apt-get clean && rm -rf /var/lib/apt/lists/*
RUN git clone https://github.com/frozenpandaman/s3s.git /s3s
WORKDIR /s3s
CMD echo S3S_FLAGS=$S3S_FLAGS && git config --global --add safe.directory /s3s && git checkout master && git pull && pip install -r requirements.txt && python3 s3s.py $S3S_FLAGS
