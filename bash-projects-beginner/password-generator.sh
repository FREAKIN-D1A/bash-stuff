#!/bin/bash
password=`date | sha256sum | cut -b 1-$1`
echo -e "Your password of $1 length is here :\n"
echo -e "$password"