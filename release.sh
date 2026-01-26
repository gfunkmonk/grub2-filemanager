#!/usr/bin/env sh
if [ -e "grubfm*.7z" ]
then
    rm grubfm*.7z
fi

i=0
for lang in zh_CN en_US
do
    if [ -d "releases" ]
    then
        rm -r releases
    fi
    mkdir releases
    i=`expr $i + 1`
    echo "${i}" | ./build.sh
    cp grubfm.iso releases/
    cp grubfm*.efi releases/
    cp loadfm releases/
    cd releases
    7z a ../grubfm-${lang}.7z *
    cd ..
    rm -r releases
done
