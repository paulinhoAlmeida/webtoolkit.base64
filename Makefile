.PHONY : clean build-min docs

VERSION = $(shell cat version.txt)
BRANCH = $(shell git branch | grep \* | cut -d' ' -f 2)
build: | build-min


build-min:
	@echo "Creating version."
	@mkdir -p ./build
	@echo "Marking version ${VERSION}"
	@cat base64.js | sed 's/VERSION-PLACEHOLDER/${VERSION}/' > ./build/base64.${VERSION}.js
	@cp ./build/base64.${VERSION}.js ./build/base64.js
