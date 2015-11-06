.PHONY: all test clean

srcs := $(wildcard src/*.c)
objs := $(patsubst %.c,%.o,$(srcs))
target := hello

all: $(target)

$(target): $(objs)
	cc $(objs) -o $@

clean:
	rm -f $(target) $(objs)

test: all
	echo test

