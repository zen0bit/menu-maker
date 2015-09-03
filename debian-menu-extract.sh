#!/bin/bash

# Extract menu descriptors from .deb files found in all directories
# rooted by command-line parameters and cat them to stdout
# Ex:> ./debian-menu-extract.sh /var/cache/apt > menu-file

for root in $*; do
	for deb in `find $root -name "*.deb"`; do
		dest=`mktemp -d`
		dpkg-deb -R $deb $dest
		wc=$dest/usr/share/menu/*
		for menu in `echo $wc`; do
			if [ -f $menu ]; then
				cat $menu | sed -e '/^#/ d' | sed -e ':a; N; s/\\[ \t]*\n//; ta' | sed -e '/^[ \t]*$/ d'
			fi
		done
		rm -rf $dest
	done
done

#
