English: [README.md](README.md)


# cmus.vim

vim用cmusコントローラー

[![tipmona](https://img.shields.io/badge/tipme-%40tipmona-orange.svg)](https://twitter.com/share?text=%40tipmona%20tip%20%40Cj-bc%2039) [![monya/mona](https://img.shields.io/badge/tipme-%40monya/mona-orange.svg)](https://monya-wallet.github.io/a/?address=MBdCkYyfTsCxtm1wZ1XyKWNLFLYj8zMK3V&scheme=monacoin) [![tipkotone](https://img.shields.io/badge/tipme-%40tipkotone-orange.svg)](https://twitter.com/share?text=%40tipkotone%20tip%20%40Cj-bc%20
)


# 機能

- [ ] cmusを操作するコマンド群
- [ ] statuslineにcmusの情報を表示
- [ ] cmusの操作ができるcmusバッファの提供

# どうやって動いているの？

このプラグインは、公式に提供されている`cmus-remote`を使用しています。

# commands

## `:CmusStatus [Key]`

cmusのステータスを表示します。
[key]が指定された場合、それに対応した値のみ出力されます。
元のコマンド: `cmus-remote --query`

## `:CmusStart`

音楽を再生します。
元のコマンド: `cmus-remote --play`

## `:CmusStop`

音楽を停止します。
元のコマンド: `cmus-remote --stop`

## `:CmusPause`

音楽をポーズします。
二度実行された場合、再度音楽を再生し始めます。
元のコマンド: `cmus-remote --pause`

## `:CmusPausePlayback`

音楽をポーズします。
音楽が再生されていないときは何もしません。
元のコマンド: `cmus-remote --pause-playback`

## `:CmusNext`

次の曲を再生します。
元のコマンド: `cmus-remote --next`

## `:CmusPrev`

一つ前の曲を再生します。
元のコマンド: `cmus-remote --prev`


