# simple-s3s-docker
Splatoon3の戦績データを[stat.ink](https://stat.ink)に自動でアップロードする[s3s](https://github.com/frozenpandaman/s3s)をdockerで立ち上げるだけ

## 初回起動時
1. **[重要] `config.txt` を作成する (空ファイルでOK)**
1. `docker compose up`
2. 初期セットアップの対話モードで停止するので、別のターミナルで `docker attach simple-s3s-container`
3. Enterで対話モードを進めていく
4. データ取得が始まる
5. (取得が成功したらコンテナを終了して2回目以降の手順でバックグラウンド実行に移してもよい)

## 2回目以降
1. `docker compose up -d` を起動
2. データ取得が始まる
3. (トークンの期限切れ等で止まる事があるので適宜 `docker attach simple-s3s-container` 等で設定してあげる)

## 動作確認
- コンテナの様子を確認したいときは `docker logs -f --tail 10 simple-s3s-container`
