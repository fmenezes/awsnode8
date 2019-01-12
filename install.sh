cd /tmp
yum groupinstall 'Development Tools' -y
yum install python -y #fix RPM node package complaining about python version
curl -O https://rpm.nodesource.com/pub_8.x/el/7/x86_64/nodejs-8.10.0-1nodesource.x86_64.rpm
rpm -i --nosignature --force nodejs-8.10.0-1nodesource.x86_64.rpm
rm nodejs-8.10.0-1nodesource.x86_64.rpm
