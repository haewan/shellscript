[Unit]
Description=fms
After=network.target syslog.target

[Service]
Type=forking
User=wasadm
Group=wasadm
WorkingDirectory=/was/domains/fms/bin
ExecStart=/was/domains/fms/bin/start.sh
ExecStop=/was/domains/fms/bin/stop.sh

[Install]
WantedBy=multi-user.target


systemctl daemon-reload
systemctl enable fms
systemctl disable fms


visudo
## Allow root to run any commands anywhere
root ALL=(ALL) ALL
cgofms ALL = NOPASSWD: /usr/bin/systemctl start fms
cgofms ALL = NOPASSWD: /usr/bin/systemctl stop fms
cgofms ALL = NOPASSWD: /usr/bin/systemctl restart fms
