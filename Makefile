name = sample
all:
	@docker build --quiet=true -t 'lecture/haskell' .
	@docker run --rm lecture/haskell
	make create

run:
	@docker build --quiet=true -t 'lecture/haskell' .
	@docker run --rm lecture/haskell

create:
	@mv main.hs ${name}.hs
	@touch main.hs

build:
	docker build --quiet=true -t 'lecture/haskell' .

mount:
	docker run --rm -v ${pwd}:/usr/src lecture/haskell runghc main.hs