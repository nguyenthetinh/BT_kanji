# 課題

漢数字と数字を相互に変換するライブラリを作成してください。

## 例
- 1.to_kansuji #=> "一"
- "一".to_number #=> 1

# 環境構築

ruby2.3以上をインストール(rbenv推奨)

$ bundle install

# 評価

```sh
$ bundle exec rspec
```
をパスすること。

また、以下の点について留意すること。

- spec/lib/acceptance_spec.rbは変更しないこと
- lib/kansuji.rb、spec/lib/kansuji_spec.rbにプログラムを記述し、特段の理由がない限り他のファイルを変更しないこと。
- lib/kansuji.rbは50行以内であることが望ましい。
- 開発中はrspecを使ったTDD(テスト駆動開発)を行うこと。

- spec/lib/acceptance_spec.rbは数年前の記述方法で書かれているため、rspecの書き方として参考にしないこと。
