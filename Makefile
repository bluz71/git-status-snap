.PHONY: build clean

OS := $(shell uname)

build:
	shards build --release --no-debug
	strip bin/git-status-snap

clean:
	rm -f bin/git-status-snap
