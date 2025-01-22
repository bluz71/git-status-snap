.PHONY: build clean

build:
	shards build --release --static --no-debug
	strip bin/git-status-snap

clean:
	rm -f bin/git-status-snap
