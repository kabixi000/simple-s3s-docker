FROM python:3.9-slim
RUN apt-get update && apt-get install --no-install-recommends -y git && apt-get clean && rm -rf /var/lib/apt/lists/*
RUN git clone https://github.com/frozenpandaman/s3s.git /s3s
WORKDIR /s3s
CMD git pull && pip install -r requirements.txt && python3 s3s.py -M -r
