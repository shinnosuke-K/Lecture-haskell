# Lecture-haskell

大学院で Haskell を使う講義があって、自分のPCのに環境を構築してもいいのですが、この先、Haskell を使う見込みが無いので Docker で環境構築しました。

## 実行ファイル

`main.hs` にコードを書いてください。<br><br>

## コマンド

``` make
make
```

これだけでも実行はできます。

その場合、`main.hs`で書いたコードが`sample.hs` というファイルで作成されます。

### ファイル名を指定したい場合

ファイル名を例えば、`lecture1.hs` にしたければ、

下のコマンドを実行してください。

``` make
make name=lecture1
```

コマンドを打つと、空の`main.hs`ができるので、そちらにコードを引き続き書いていってください。

他にも

```make
make run
```

なら、ファイルは作成されず、プログラムのみ実行されます。

```make
make create name=lecture1
```

これは、`main.hs`を`lecture1.hs`というファイル名に変更し、空の`main.hs`が作成されます。

<br>

### まとめ

Dockerfileをビルドしてから実行しているので、docker image に haskell がなければ、時間はかかりますが、

すでにあったり、２回目以降であればイメージで実行してくれるのでそこまで遅くはないはずです。
