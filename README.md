日本語: [JA_README.md](JA_README.md)


# cmus.vim

Control cmus from vim

[![tipmona](https://img.shields.io/badge/tipme-%40tipmona-orange.svg)](https://twitter.com/share?text=%40tipmona%20tip%20%40Cj-bc%2039) [![monya/mona](https://img.shields.io/badge/tipme-%40monya/mona-orange.svg)](https://monya-wallet.github.io/a/?address=MBdCkYyfTsCxtm1wZ1XyKWNLFLYj8zMK3V&scheme=monacoin) [![tipkotone](https://img.shields.io/badge/tipme-%40tipkotone-orange.svg)](https://twitter.com/share?text=%40tipkotone%20tip%20%40Cj-bc%20
)


# Feature

- [ ] Provide commands to manipulate with cmus
- [ ] See cmus infomations(i.e. music title, artist, album name) in statusline, etc
- [ ] Provide cmus buffer to operate cmus

# How this works?

This plugin works bu using `cmus-remote` which is officially offered.

# provided commands

## `:CmusStatus [Key]`

Outputs current status of cmus.
If `[key]` is specified, just output status of that key.
This is based on `cmus-remote --query`

## `:CmusStart`

Tell cmus to start playing music.
This is based on `cmus-remote --play`

## `:CmusStop`

Tell cmus to stop playing music.
This is based on `cmus-remote --stop`

## `:CmusPause`

Tell cmus to pause music.
If executed twice, the music will be played again.
This is based on `cmus-remote --pause`

## `:CmusPausePlayback`

Tell cmus to pause playback.
This only pause music, don't restart playing if no music is played.
This is based on `cmus-remote --pause-playback`

## `:CmusNext`

Tell cmus to play next one.
This is based on `cmus-remote --next`

## `:CmusPrev`

Tell cmus to play previous one.
This is based on `cmus-remote --prev`
