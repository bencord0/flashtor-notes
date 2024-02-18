#!/bin/bash

zfs diff zpool/gentoo/root@gentoo-stage3-20230813 \
	| grep -v -f /opt/scratchdisk/zfsdiff-excludes.txt \
	| awk '{print $2}' \
	| sort -u
