FROM haskell

# 作業ディレクトリを指定
WORKDIR /usr/src/

# 実行ファイルをコンテナ内へコピー
COPY  ./main.hs /usr/src/main.hs

# docker run 時に起動
CMD  runghc main.hs
