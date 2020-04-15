#!/bin/sh

username=$(who am i | awk '{print $1}')

# get source files
git clone https://github.com/Allen-Hu/CompetitiveKotlin.git ./.ck

# add folder to path
has_path=$(cat /etc/paths | grep /Users/"$username"/.ck | wc -l | awk '{ print($1) }')
if [ "$has_path" = 0 ] ; then
    sh -c "echo /Users/$username/.ck >> /etc/paths"
fi

# give executing permissions
chmod a+x /Users/"$username"/.ck/kk
chmod a+x /Users/"$username"/.ck/kj
