#!/bin/sh

docker run -v$(pwd):/tmp/gurumdds-2.6 osrf/ubuntu_armhf:bionic sh -c 'apt update && \
	apt install -y equivs && \
	cd /tmp/gurumdds-2.6 && \
	equivs-build gurumdds-2.6'
