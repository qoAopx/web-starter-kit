# web-starter-kit on Docker

- dockerで[Google : Web Starter Kit](https://developers.google.com/web/tools/starter-kit/?hl=ja)の環境を作りました。
- Dockerfileは[blackxoredさんのDockerHub](https://hub.docker.com/r/blackxored/google-web-starter-kit/)を参考にさせていただきました。
- いくつかバージョンを新しくしたのと```docker-compose up```で動くようにしています。

## 起動方法

- download_wsk.sh で web-starter-kitのファイル群をダウンロードしてます。

```sh
sh-3.2$ git clone https://github.com/qoAopx/web-starter-kit.git
sh-3.2$ cd web-starter-kit
sh-3.2$ ./download_wsk.sh
sh-3.2$ docker-compose up -d
```

## 確認方法

- 3000と3001番ポートで動きます。中身はまだよくわかってません...
  1. [サンプルページ:3000](http://localhost:3000/)
  1. [Browsersync:3001](http://localhost:3001/)
