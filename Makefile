help:
	@echo "Targets:"
	@echo "  build:   build site"
	@echo "  deploy:  upload site"

build: sass

deploy: build
	rsync -R index.html css/main.css fishtank:public_html

sass:
	sass --update -t compressed --sourcemap=none css/*.scss
