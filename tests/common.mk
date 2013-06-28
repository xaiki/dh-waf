#!/usr/bin/make -f

export DEBPYTHON_DEFAULT ?= $(shell python3 ../../dhpython/_defaults.py default cpython2)
export DEBPYTHON_SUPPORTED ?= $(shell python3 ../../dhpython/_defaults.py supported cpython2)
export DEBPYTHON3_DEFAULT ?= $(shell python3 ../../dhpython/_defaults.py default cpython3)
export DEBPYTHON3_SUPPORTED ?= $(shell python3 ../../dhpython/_defaults.py supported cpython3)

all: run check

run: clean
	dpkg-buildpackage -b -us -uc

clean-common:
	./debian/rules clean
