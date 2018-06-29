build:
	sudo snapcraft cleanbuild

register:
	snapcraft register liquidsky-wine-unofficial 

upload:
	snapcraft push liquidsky-wine-unofficial_latest_multi.snap

release:
	LASTRELEASE=$$(snapcraft list-revisions liquidsky-wine-unofficial | awk '/[0-9]+/ {print $$1}' | tail -n 1);\
	snapcraft release liquidsky-wine-unofficial $$LASTRELEASE edge

.PHONY: build register upload release
