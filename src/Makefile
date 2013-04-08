download_dirs = amd-app-sdk fglrx
localsrc_dirs = pyopencl adl3 poclbm
dirs = ${download_dirs} ${localsrc_dirs}

all: ${dirs}

${download_dirs}:
	make -C $@

pyopencl:
	# CentOS 6.3
	sudo yum install -y gcc-c++ python-devel python-mako numpy boost-python
	# Ubuntu/Debian
	#sudo apt-get install -y g++ python-dev python-mako python-numpy libboost-dev
	( cd $@; \
	  git submodule init; \
	  git submodule update; \
	  rm -f siteconf.py; \
	  python configure.py --cl-inc-dir=/opt/AMDAPP/include \
	    --cl-lib-dir=/opt/AMDAPP/lib/`arch`; \
	  make; \
	  sudo make install; \
	)

cgminer:
	# CentOS 6.3
	sudo yum install -y libcurl-devel ncurses-devel
	( cd $@; \
	  autogen.sh
	  make; \
	  sudo make install; \
	)

adl3 poclbm:
	( cd $@; \
	  python setup.py build; \
	  sudo python setup.py install; \
	  rm -rf build \
	)

clean:
	for i in ${dirs}; do make -C $$i clean; done

.PHONY: clean ${dirs}
