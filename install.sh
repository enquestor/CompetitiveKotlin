#!/bin/sh

readonly username=$(who am i | awk '{print $1}')
readonly ckpath="/Users/$username/.ck"

# remove if folder exists
installed=$(ls -al /Users/"$username"/ | grep .ck | wc -l | awk '{print $1}')
if [ "$installed" = 1 ] ; then
    rm -rf "$ckpath"
fi

# get source files
git clone https://github.com/Allen-Hu/CompetitiveKotlin.git /Users/"$username"/.ck

# add folder to path
has_path=$(cat /etc/paths | grep "$ckpath" | wc -l | awk '{ print $1 }')
if [ "$has_path" = 0 ] ; then
    sh -c "echo $ckpath >> /etc/paths"
fi

# give executing permissions
chmod a+x "$ckpath"/kk
chmod a+x "$ckpath"/kj
