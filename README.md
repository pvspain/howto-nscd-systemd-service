# howto-nscd-systemd-service

## References

- [devkral/systemd-arch-units][1]
  - source for *service* file in ./install-service.sh
  - requirement for nscd.socket commented out in mine.
- [Understanding nscd daemon for hosts cache][3]
  - detail on some cofig settings
- [Don't use nscd][2]
  - explains dependencies on glibc and others

I am using Ubuntu 18.04.2 LTS
```
cat /etc/issue*
```

Check you have nscd installed:

```
nscd --version || apt list nscd
```

If not, you can install NSCD:

```
sudo apt update && sudo apt install -y nscd
```

To **install** the NSCD service:

```
./install-service.sh
```

To **read** the NSCD documentation:

```
man nscd
man nscd.conf
```
To **edit** the NSCD configuration:

```
vi /etc/nscd.conf
```

To **start** the service and test:

```
sudo systemctl start nscd && \
sudo systemctl status nscd && \
sudo nscd --statistic
```

To **stop** the service:

```
sudo systemctl stop nscd
```

To **autostart** the service on system boot:

```[bash]
sudo systemctl enable nscd
```


To **uninstall** the nscd service:

```[bash]
./uninstall-service.sh
```

To remove nscd and any unrequired dependencies:

```[bash]
sudo apt remove -y nscd && sudo apt autoremove -y
```
[1]: https://github.com/devkral/systemd-arch-units/blob/master/service/nscd.service
[2]: https://jameshfisher.com/2018/02/05/dont-use-nscd/
[3]: https://www.golinuxhub.com/2017/04/understanding-nscd-daemon-for-hosts.html