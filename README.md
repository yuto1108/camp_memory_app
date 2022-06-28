# アプリケーション名
CAMP MEMORY

# アプリケーション概要
キャンプの思い出をユーザーが投稿し共有することができる

# URL
https://camp-memory.herokuapp.com/

# テスト用アカウント
Basic認証ID: admin<br>
Basic認証password: 2222<br>
test_user1 メールアドレス: aaa@bbb<br>
test_user1 password: 123123<br>
test_user2 メールアドレス: aaa@aaa<br>
test_user2 password: 123123<br>

# 利用方法
## キャンプの思い出を投稿
1 トップページのヘッダーから新規登録をする<br>
2 トップページのヘッダーから新規投稿をする

## 他ユーザーーのフォロー
他ユーザーをフォローしたい時はユーザー詳細画面上部のフォローするをクリック

# アプリケーションを作成した背景
趣味のキャンプを行なっている時に喜びを共有できる場が少ないと感じたため

# 洗い出した要件
https://docs.google.com/spreadsheets/d/1-vNRnaaC5XFKS3z4kQVg-IFcvEmRhwAy45FLWDk7piQ/edit#gid=982722306

# 実装した機能
## 新規登録
[![Image from Gyazo](https://i.gyazo.com/35c46820ea64350ce5826ddf5cbe5c81.gif)](https://gyazo.com/35c46820ea64350ce5826ddf5cbe5c81)
[![Image from Gyazo](https://i.gyazo.com/7cdad22a3d11836545930b31ac301e98.gif)](https://gyazo.com/7cdad22a3d11836545930b31ac301e98)

## 新規投稿
[![Image from Gyazo](https://i.gyazo.com/d827abdb417e90efe60451ff0de8e679.gif)](https://gyazo.com/d827abdb417e90efe60451ff0de8e679)
[![Image from Gyazo](https://i.gyazo.com/9a9f23eadf036912e7daf18fe23d40cb.gif)](https://gyazo.com/9a9f23eadf036912e7daf18fe23d40cb)

## フォロー機能
[![Image from Gyazo](https://i.gyazo.com/f68da357c21559b1ab590a81f5b14ab0.gif)](https://gyazo.com/f68da357c21559b1ab590a81f5b14ab0)

## 検索機能
[![Image from Gyazo](https://i.gyazo.com/3dea5c8f17259b7206686527636e70ca.gif)](https://gyazo.com/3dea5c8f17259b7206686527636e70ca)

# 今後実装予定の機能
新規投稿で記入してもらっている都道府県での検索機能<br>
コメント機能

# データーベース設計
[![Image from Gyazo](https://i.gyazo.com/208a8ef6dd62da689f1a6827d8ac3213.png)](https://gyazo.com/208a8ef6dd62da689f1a6827d8ac3213)

# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/bbd0cc1a28a7fe7dcad262a150dc2de3.png)](https://gyazo.com/bbd0cc1a28a7fe7dcad262a150dc2de3)

# 工夫したこと
・都道府県の入力にアクティブハッシュを使うことでユーザーの負担を軽減した<br>
・フォロー機能を実装したことでより共感を得やすいアプリを作ろうとした