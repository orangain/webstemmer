# Makefile for webstemmer

PACKAGE=webstemmer

GIT=git
PYTHON=python
VERSION=`$(PYTHON) $(PACKAGE)/__init__.py`
DISTNAME=$(PACKAGE)-dist-$(VERSION)
DISTFILE=/tmp/$(DISTNAME).tar.gz

all:

install:
	$(PYTHON) setup.py install

clean:
	-rm -rf build
	-cd $(PACKAGE) && $(MAKE) clean
	-cd tools && $(MAKE) clean

test:
	cd samples && $(MAKE) test

# Maintainance:
commit: clean
	$(GIT) commit

check:
	cd $(PACKAGE) && make check

dist: clean
	$(GIT) archive --prefix=$(DISTNAME)/ master | gzip -c > $(DISTFILE)

WEBDIR=$$HOME/Site/unixuser.org/python/webstemmer
publish: dist
	cp $(DISTFILE) $(WEBDIR)
	cp docs/*.html docs/*.png $(WEBDIR)/
