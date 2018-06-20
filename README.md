# Stand-in packages for ROS 2

Some vendor rmw implementations are not available via binary .deb for all architectures.

Some ROS 2 packages may optionally build support for vendor rmw implementations if they are present.
However, ROS 2 release and buildfarm tools do not currently have an architecture dependent way to resolve dependencies.
So when these optional dependencies are added as build dependencies the buildfarm will attempt to install them for both amd64 and arm64.

In order to allow the buildfarm to successfully build shell packages for vendor rmw implementations that aren't available this repository contains packages which stand in to satisfy the dependency allowing dependencies to be satisfied across platforms.

This works because the vendor rmw packages will detect that vendor libraries are missing at build configuration time and build benign artifacts.


