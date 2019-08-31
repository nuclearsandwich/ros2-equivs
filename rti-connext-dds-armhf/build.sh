#!/bin/sh

docker run -v$(pwd):/tmp/rti-connext-dds osrf/ubuntu_armhf:bionic sh -c 'apt update && \
	apt install -y equivs && \
	cd /tmp/rti-connext-dds && \
	equivs-build rti-connext-dds'
