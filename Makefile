.PHONY: all test clean

srcs := $(wildcard src/*.c)
objs := $(patsubst %.c,%.o,$(srcs))
target := hello

CFLAGS := -Iinclude

all: $(target)

$(target): $(objs)
	$(CC) $(objs) -o $@

clean:
	rm -f $(target) $(objs)
	make -C test clean

test: all
	make -C test
	./test/hello_unittest

