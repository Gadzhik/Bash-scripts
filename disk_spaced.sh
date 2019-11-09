#!/bin/bash
use_disk=`df -h / | grep -v Filesystem | awk '{print $5}' | sed 's/%//g'`
case $use_disk in
[1-84]*)
echo "OK - $use_disk% of disk space used."
exit 0
;;
[90]*)
echo "WARNING - $use_disk% of disk space used."
exit 1
;;
[91-100]*)
echo "CRITICAL - $use_disk% of disk space used."
exit 2
;;
*)
echo "UNKNOWN - $use_disk% of disk space used."
exit 3
;;
esac
