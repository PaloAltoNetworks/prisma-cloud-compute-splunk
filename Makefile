check-version:
ifndef VERSION
	$(error VERSION is undefined)
endif

clean:
	rm -f pcc-splunk-app-*.tar.gz

build: check-version clean
	@python3 -c 'import configparser; parser = configparser.ConfigParser(); parser.read("twistlock/default/app.conf"); parser.set("launcher", "version", "$(VERSION)"); f = open("twistlock/default/app.conf", "w"); parser.write(f); f.close();'
	tar -czf pcc-splunk-app-$(VERSION).tar.gz twistlock

## Publish target needs to be debugged. Publishing manually in the meantime.
# publish: build
# 	@read -p 'Splunkbase username: ' username \
# 	; read -s -p 'Splunkbase password: ' password \
# 	; curl 'https://splunkbase.splunk.com/api/v1/app/4555/new_release/' -u $$username:$$password -F "files[]=@pcc-splunk-app-$(VERSION).tar.gz" -F "filename=pcc-splunk-app-$(VERSION).tar.gz" -F "splunk_versions=8.2,8.1,8.0,7.3,7.2" -F "visibility=true"
