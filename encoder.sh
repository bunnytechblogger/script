#!/bin/bash

function usage() {
   echo "Usage : $1 [-f <filename>][-s <string>][-h]"
}

opt="${1}"

while getopts f:s:h opt ; do
case $opt in
     f)
       FILE="${2}"
       if [ -f $FILE ]
       then
         echo `base64 $FILE`
       else
         echo "file doesnot exists"
       fi
       ;;
     s)
        STRING="${2}"
        echo $STRING | base64
        ;;
     h)
        usage
        ;;
     *)
        usage
        echo "Invalid argument"
esac
done
