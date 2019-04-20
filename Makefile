name = sample
all:
	@docker build --quiet=true -t 'lecture/haskell' .
	@docker run --rm lecture/haskell
	@mv main.hs ${name}.hs
	@touch main.hs