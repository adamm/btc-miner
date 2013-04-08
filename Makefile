
all: setup

setup:
	git submodule init
	git submodule update
	make -C src

clean:
	make -C src clean

.PHONY: setup clean
