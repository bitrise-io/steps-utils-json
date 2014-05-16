#!/bin/bash
# @Author: Tamas Szucs
# @Date:   2014-05-16 13:35:30
# @Last Modified by:   Tamas Szucs
# @Last Modified time: 2014-05-16 13:36:16

function jsonval {
    temp=`echo $json | sed 's/\\\\\//\//g' | sed 's/[{}]//g' | awk -v k="text" '{n=split($0,a,","); for (i=1; i<=n; i++) print a[i]}' | \
    sed 's/\"\:\"/\|/g' | sed 's/[\,]/ /g' | sed 's/\"//g' | grep -w $prop | sed 's/ //g' | sed "s/$prop//" | sed 's/://'`
    echo ${temp##*|}
}