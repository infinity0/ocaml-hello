#!/bin/sh
set -e

case "$1" in
reset)
	"$0" clean && "$0"
	;;
clean)
	test -f Makefile && make distclean
	oasis -info setup-clean -remove
	rm -rf opam
	;;
"")
	for dep in oasis oasis2opam; do type $dep >/dev/null || opam install $dep; done
	oasis -info setup -setup-update dynamic
	oasis2opam -info --local -y
	make CONFIGUREFLAGS=--enable-tests configure
	;;
*)
	echo >&2 "Usage: $0 [|clean|reset]"
	exit 2
	;;
esac
