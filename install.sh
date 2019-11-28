#! /bin/bash
# Install host pam
useradd anna
useradd adri
echo "anna" | passwd --stdin anna
echo "adri" | passwd --stdin adri
cp /opt/docker/login.defs /etc/login.defs
cp /opt/docker/chfn /etc/pam.d/chfn
cp /opt/docker/pam_python.so /usr/lib64/security/.
