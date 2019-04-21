sudo sh -c "
systemctl stop nscd
systemctl disable nscd
rm /lib/systemd/system/nscd.service
systemctl daemon-reload
systemctl reset-failed
"