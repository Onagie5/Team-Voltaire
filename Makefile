default: install

h help:
	grep '^[a-z]' Makefile


install:
	npm install

upgrade:
	npm update

clean:
	rm -rf dist/*
build:
	npm run build
build-watch:
	npm run watch
dev:
	npm run dev


s serve: clean build
	$(MAKE) -j 2 build-watch dev
