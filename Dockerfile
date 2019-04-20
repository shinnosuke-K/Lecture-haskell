FROM haskell
WORKDIR /usr/src/
COPY  ./main.hs /usr/src/main.hs
CMD  runghc main.hs
