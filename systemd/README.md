# systemd units/timers

This is pretty lazy but hey, I don't need it to be portable.

Steps to use:
 * Make it work from the config file (set api key, dns name, etc)
 * Edit `ExecStart` path in service file to match your install location
 * Change `User` in service file to match the user to run as (this impacts `$HOME` which impacts the config file location)
 * Copy the service file and the timer file to `/etc/systemd/system/`
 * Let systemd reparse this directory with `sudo systemctl daemon-reload`
 * You can test the service with `sudo systemctl start dreamhost-dynamic-dns.service`
 * You can enable the timer on boot with `sudo systemctl enable dreamhost-dynamic-dns.timer`
 * You can start the timer running with `sudo systemctl start dreamhost-dynamic-dns.timer`

Probably check the journal to make sure its working (`journalctl -u dreamhost-dynamic-dns.service`)

