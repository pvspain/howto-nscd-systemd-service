# howto-nscd-systemd-service

I am using Ubuntu 18.04.1 LTS

Check you have nscd installed:

```
nscd --version || apt list nscd
```

If not, you can install PHP:

```
sudo apt update && sudo apt install -y nscd
```

To **install** the NSCD service:

```
./install-service.sh
```

To **start** the service:

```
sudo systemctl start nscd
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
