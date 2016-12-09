all: zip upload

zip:
	rm io.murano.zip || true
	zip -r io.murano.zip *

upload:
	murano package-import --is-public --exists-action u io.murano.zip
