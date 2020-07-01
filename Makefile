default: build

build: node_modules

clean:
	rm -rf node_modules

node_modules: package.json package-lock.json
	npm install
	touch $@

.PHONY: default build clean
