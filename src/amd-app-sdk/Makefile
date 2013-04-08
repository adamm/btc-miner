
pkg = AMD-APP-SDK-v2.4-lnx64.tgz
url = http://download2-developer.amd.com/amd/APPSDK/$(pkg)

all: $(pkg)

clean:
	rm -f $(pkg)

$(pkg):
	wget $(url)

.PHONY: clean
