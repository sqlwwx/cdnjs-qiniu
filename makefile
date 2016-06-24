.PHONY: rsync update
.DEFAULT_GOAL := help

QRSYNC_CONFIG ?= qrsync-config.json

rsync:
	./bin/qrsync-v2 $(QRSYNC_CONFIG)

update:
	./auto-update.js run
