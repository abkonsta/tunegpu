How to install

- put everything in /usr/local/tunegpu/
- link /usr/local/tunegpu/tunegpu.service and tunegpu.timer into /etc/systemd/system
- link tunegpu_eth.sh to tubegpu.sh (or if you are mining raven, link tunegpu_rvn.sh)
- systemctl daemon-reload
- systemctl enable tunegpu.timer

It will now start on reboot. To start immediately, do this:

- systemctl start tunegpu.timer

