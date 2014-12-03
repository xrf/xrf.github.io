help:
	@echo "Targets:"
	@echo "  build:   build site"
	@echo "  deploy:  upload site"

build: sass

deploy: build
	cp index.html ../../www/
	cp css/main.css ../../www/css/

sass:
	@sass --update -t compressed --sourcemap=none css/*.scss
