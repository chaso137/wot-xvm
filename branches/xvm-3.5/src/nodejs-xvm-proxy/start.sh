#!/bin/sh

log=/xvm/log/proxy.log
proxy=/xvm/proxy2/app.js

#node $proxy; exit # foreground

forever stop $proxy > /dev/null 2>&1
rm -f $log
forever start -l $log $proxy
echo
forever list
echo
echo "tail -F $log"
echo