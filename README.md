# simple-s3s-docker
[s3s](https://github.com/frozenpandaman/s3s)をdockerで立ち上げるだけ

## 初回起動時
1. `docker compose up`
2. 初期セットアップの対話モードで停止するので、別のターミナルで `docker attach s3s-docker-run-1`
3. Enterで対話モードを進めていく
4. データ取得が始まる

## 2回目以降
1. `docker compose up` か `run.bat` を起動
2. データ取得が始まる
