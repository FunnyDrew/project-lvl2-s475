
start:
	npx babel-node src/bin/gendiff.js /__tests__/__fixtures__/before.json /__tests__/__fixtures__/after.json

lint:
	npx eslint .

publish:
	npm publish --dry-run

install:
	npm link

test:
	npx jest

test-coverage:
	npx jest --coverage