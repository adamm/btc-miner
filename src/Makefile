dirs = amd-app-sdk fglrx

all:
	for i in ${dirs}; do make -C $$i; done

clean:
	for i in ${dirs}; do make -C $$i clean; done

.PHONY: clean
