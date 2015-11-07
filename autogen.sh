#!/bin/sh
set -e

case "$1" in
clean)
	test -f Makefile && make distclean
	oasis -info setup-clean -remove
	rm -rf opam
	;;
*)
	for dep in oasis oasis2opam; do type $dep >/dev/null || opam install $dep; done
	oasis -info setup -setup-update dynamic
	oasis2opam -info --local -y
	;;
esac
