# Novix

```
  ███╗   ██╗ ██████╗ ██╗   ██╗██╗██╗  ██╗
  ████╗  ██║██╔═══██╗██║   ██║██║╚██╗██╔╝
  ██╔██╗ ██║██║   ██║██║   ██║██║ ╚███╔╝ 
  ██║╚██╗██║██║   ██║╚██╗ ██╔╝██║ ██╔██╗ 
  ██║ ╚████║╚██████╔╝ ╚████╔╝ ██║██╔╝ ██╗
  ╚═╝  ╚═══╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝  ╚═╝
```

Arch Linux based operating system designed specifically for Kubernetes.

### Remote Install

A remote install can be remotely applied to a fresh Arch Linux installation with root ssh access.

Use `make infra` to run any `*.infra` script.

For example

```
#!/bin/bash
# nova.infra
./install_remote 185.3.94.67 esme
./install_remote 69.193.119.179 alice
```


### Local Install
