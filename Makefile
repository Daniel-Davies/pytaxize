all: build install

.PHONY: build install test docs distclean dist upload

build:
	python3 setup.py build

install: build
	python3 setup.py install

test:
	python3 -m "nose" -v --with-coverage --cover-package=pytaxize

docs:
	cd docs;\
	make html
	# open _build/html/index.html

check:
	python3 -m twine check dist/*

distclean:
	rm dist/*

dist:
	python3 setup.py sdist bdist_wheel --universal

register:
	python3 setup.py register

up:
	python3 -m twine upload dist/*

uptest:
	python3 -m twine upload --repository-url https://test.pypi.org/legacy/ dist/*
