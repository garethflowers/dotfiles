#!/bin/sh

#
# Fix for `nodemon` getting error `Internal watch failed: watch ENOSPC`
#
# @See https://stackoverflow.com/questions/34662574/node-js-getting-error-nodemon-internal-watch-failed-watch-enospc#34664097
#

echo fs.inotify.max_user_watches=582222 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p
