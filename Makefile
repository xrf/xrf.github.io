build:

deploy: build
	rsync -R index.html style.css fishtank:public_html
