
start:
	npx babel-node src/bin/gendiff.js __tests__/__fixtures__/before.json __tests__/__fixtures__/after.json -f plain

lint:
	npx eslint .

publish:
	npm publish --dry-run

install:
	npm link

test:
	npm test

test-coverage:
	npm test -- --coverage