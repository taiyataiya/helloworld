.PHONY: run
run: build
	@./tgt/a.out

.PHONY: build
build: src/main.cpp
	@mkdir -p tgt
	@clang++ src/main.cpp -o tgt/a.out -g -Wall

.PHONY: clean
clean:
	@rm -f tgt/a.out
