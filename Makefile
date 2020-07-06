default: build

build: node_modules

clean:
	rm -rf node_modules

test:
	npm test

node_modules: package.json package-lock.json
	npm install
	touch $@

.PHONY: default build clean test
