#!/bin/bash
use_disk=`df -h / | grep -v Filesystem | awk '{print $5}' | sed 's/%//g'`
case $use_disk in
[1-89]*)
echo "OK - $use_disk% available disk space."
exit 0
;;
[90]*)
echo "WARNING - $use_disk% available disk space."
exit 1
;;
[91-100]*)
echo "CRITICAL - $use_disk% available disk space."
exit 2
;;
*)
echo "UNKNOWN - $use_disk% available disk space."
exit 3
;;
esac
