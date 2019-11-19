
install:
	npm install

start:
	npx babel-node src/bin/gendiff.js -h

lint:
	npx eslint src/bin/gendiff.js

publish:
	npm publish --dry-run

install:
	npm link
