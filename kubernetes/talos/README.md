# Talos
## Prequisites

* You need talhelper installed on your workstation (of course), head over to the Installation page for more detail.
* You also need sops installed and configured with your preferred encryption tool (age, pgp, etc).
* You also need talosctl installed on your workstation to apply the generated machine config files.


## Create Env File (optional)
an optional env file can be created to store variables that can be subsituted in
the talconfig.yaml on manifest generation

```
touch talenv.sops.yaml
sops -e -i talenv.sops.yaml
```
## Create Talos Secrets

```
<!-- talhelper gensecret > talsecret.sops.yaml
sops -e -i talsecret.sops.yaml
talhelper genconfig
export TALOSCONFIG=~/workspace/homelab/infrastructure/talos/clusterconfig/talosconfig -->
```

## Boostrap
* load the Talos image onto a usb and boot your device from it
* either statically set ip addresses in the KVM or use DHCP reservations to obtain
  an IP address
* run the bootstrap script
```
bootstrap.sh
```


## Updates

if you need to make a change to your talos config run `generate.sh` to generate a
new config with your added changes then run `apply.sh` to apply them


```
115::
talosctl upgrade --image factory.talos.dev/installer/438324ed8432f8af282682386a5d5da7c6d75a81b31716cc0be8252a9186463e:v1.6.0 -n 192.168.1.115 --force
83:
talosctl upgrade --image factory.talos.dev/installer/8fa70005e5ccd4407b8edab3d244dde79daf1ff0f2c1cc408f82a651eaf1b8fa:v1.6.0 -n 192.168.1.83 -f
```