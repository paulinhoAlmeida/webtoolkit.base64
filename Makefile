.PHONY : clean build-min docs

VERSION = $(shell cat version.txt)
BRANCH = $(shell git branch | grep \* | cut -d' ' -f 2)
build: | build-min docs

build-min:
	@echo "Creating minified version."
	@mkdir -p ./build
	@echo "Marking version ${VERSION}"
	@cat base64.js | sed 's/VERSION-PLACEHOLDER/${VERSION}/' > ./build/base64.${VERSION}.js
	@closure-compiler < ./build/base64.${VERSION}.js > ./build/base64.${VERSION}.min.js
	@cp ./build/base64.${VERSION}.js ./build/base64.js
	@cp ./build/base64.${VERSION}.min.js ./build/base64.min.js

docs:
	@echo "Creating docs"
	@docco ./build/base64.${VERSION}.js

update-page:
	@echo "Updating GitHub projct page";
	@git checkout gh-pages;
	@echo "Swiched to branch from ${BRANCH}, merging master";
	@git merge master;
	@git push origin gh-pages;
	@echo "Updated. Switching back to ${BRANCH}";
	@git checkout ${BRANCH};
