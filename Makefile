.PHONY: build clean

OS := $(shell uname)

build:
ifeq ($(OS), Darwin)
	shards build --release --no-debug
else
	shards build --release --static --no-debug
endif
	strip bin/git-status-snap

clean:
	rm -f bin/git-status-snap
