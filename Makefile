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