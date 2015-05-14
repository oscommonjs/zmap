#!/bin/bash
set -e
curl -L http://www.cmake.org/files/v3.2/cmake-3.2.2-Linux-x86_64.sh > cmake_installer.sh
diff <(md5sum cmake_installer.sh) cmake_install_checksum
/bin/bash cmake_installer.sh --prefix /opt --exclude-subdir
