#!/bin/bash
# Check if any .tgz files exist in /root/
if ls /root/*.tgz 1> /dev/null 2>&1; then
  # Remove each .tgz file
  for file in /root/*.tgz; do
    rm -f "$file"
  done
fi

wget https://raw.githubusercontent.com/lovehifi/lms-modern-skin/main/css.tgz

wget https://raw.githubusercontent.com/lovehifi/lms-modern-skin/main/image.tgz

tar -xzvf css.tgz -C /opt/logitechmediaserver-git/HTML/Default/

tar -xzvf image.tgz -C /opt/logitechmediaserver-git/HTML/Default/html/images/

systemctl restart logitechmediaserver-git.service

# Check if any .tgz files exist in /root/
if ls /root/*.tgz 1> /dev/null 2>&1; then
  # Remove each .tgz file
  for file in /root/*.tgz; do
    rm -f "$file"
  done
fi
