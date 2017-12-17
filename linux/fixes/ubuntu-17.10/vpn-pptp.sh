#!/bin/sh

#
# Fix for PPTP VPN not working.
#
# @See https://wiki.archlinux.org/index.php/NetworkManager#VPN_not_working_in_GNOME
#

ln -s /usr/lib/networkmanager/nm-openconnect-auth-dialog /usr/lib/gnome-shell/
