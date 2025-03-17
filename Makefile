
.PHONE: index
index:
	rhombus index.rhm

upload:
	mkdir -p compiled/web
	cp *.html *.svg compiled/web
	raco s3-sync --web compiled/web s3://rhombus-lang.org
