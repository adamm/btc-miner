
pkg = AMD-APP-SDK-v2.8-lnx64.tgz
url = http://developer.amd.com/wordpress/media/2012/11/$(pkg)

all: .installed

.installed: $(pkg)
	sudo ./Install-AMD-APP.sh
	sudo tar xfvz icd-registration.tgz -C /
	touch $@

clean:
	rm -f $(pkg) .installed

$(pkg):
	wget $(url)

.PHONY: clean
