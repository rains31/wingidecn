src:=$(shell ls *.po)
objs:=$(patsubst %.po,%.mo,$(src))
target_dir="../../locale/zh/LC_MESSAGES/"

%.mo: %.po
	msgfmt -o $@ $<

all:$(objs)

install: all
	install ${objs} -t ${target_dir}

clean:
	find . -name '*.mo' -type f -delete
