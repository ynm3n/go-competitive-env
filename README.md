# これはなに
- Go で競プロの問題を解く時に使うコンテナ
- VSCode と Dev Container を使っています

# インストールされる Go のバージョン
- latest
  - [Docker の公式イメージ](https://hub.docker.com/_/golang)から取ってる

# 必要なもの
- Mac
  - 他の OS では試してない
  - 動くかもしれないし、動かないかもしれない
- Docker
  - BuildKit が必要
- VSCode
- Dev Containers
  - VSCode の拡張機能

# 使い方
1. 上述の「必要なもの」を準備
2. このリポジトリをクローンして VSCode で開く
3. `Dev Containers: Reopen in Container` を実行
   - 方法1
     - コマンドパレットで実行
   - 方法2
     - VSCode のウィンドウの左下にある "><" をクリック
     - `Reopen in Container` を選択
4. コードを書く

# 動作確認環境
- Mac
  - OS
    - MacOS 13.4
  - CPU
    - Apple M1
  - Memory
    - 16GB
- Docker Desktop
  - Version
    - 4.19.0 (106363)
  - Engine
    - 23.0.5
  - BuildKit
    - 有効
- VSCode
  - Version
    - 1.78.2
- Dev Containers(VSCode Extension)
  - Version
    - v0.292.0(Preview)

<!-- 
# todo
- スニペットの整理
- エイリアスの整備
- デバッグ、テストの環境
  - code runner
  - onlinejudgetool
  - atcoder cli
  - 自動でサンプルをテスト
- コメントを書く
- 英語でコメントを書き直す
-->
