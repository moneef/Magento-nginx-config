#!/bin/bash
## create files for chroot

mkdir -p usr/share
mkdir -p {tmp,dev,pki,etc,lib64}
cp /etc/nsswitch.conf  etc/
cp /etc/resolv.conf  etc/
cp -rf /etc/pki/{CA,ca-trust,tls,nssdb} pki/
cp /lib64/{libsoftokn3.*,libnss*,libfreebl*} lib64/
cp -rf /usr/share/zoneinfo  usr/share/
mknod -m 666 dev/urandom c 1 9