sudo sh -c "cat > /lib/systemd/system/nscd.service <<EOF
[Unit]
Description=Name Service Cache Daemon

[Service]
Type=forking
ExecStart=/usr/sbin/nscd
ExecStop=/usr/sbin/nscd --shutdown
Restart=always

[Install]
WantedBy=multi-user.target
Also=nscd.socket
"