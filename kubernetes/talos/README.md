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
talosctl upgrade --image factory.talos.dev/installer/23f7cdca23660abd2f59dc80c03398bddd606f03826d13f96aa58ca3e867f019:v1.9.1 -n 192.168.1.115 --force
83:
talosctl upgrade --image factory.talos.dev/installer/23f7cdca23660abd2f59dc80c03398bddd606f03826d13f96aa58ca3e867f019:v1.9.1 -n 192.168.1.83 -f
```


talosctl upgrade --image factory.talos.dev/installer/cc5c60ed882f46684a2d43b210e0fe5f04481ea175a95b671c10964b444ce8fc:v1.9.1 -n 192.168.69.1 -f




 talosctl upgrade --talosconfig=./clusterconfig/talosconfig --nodes=192.168.69.1 --image=factory.talos.dev/installer/23f7cdca23660abd2f59dc80c03398bddd606f03826d13f96aa58ca3e867f019:v1.9.1 --force;

export TALOSCONFIG=~/workspace/homelab/kubernetes/talos/clusterconfig/talosconfig
sops -i -d talsecret.sops.yaml
talhelper genconfig
export TALOSCONFIG=~/workspace/homelab/kubernetes/talos/clusterconfig/talosconfig
talhelper genconfig
sops -i -e talsecret.sops.yaml


talosctl apply-config -n 192.168.69.1 -f ./clusterconfig/pickhaus-pickhaus-node-001.internal.pick.haus.yaml
talosctl apply-config -n 192.168.69.2 -f ./clusterconfig/pickhaus-pickhaus-node-002.internal.pick.haus.yaml
talosctl apply-config -n 192.168.69.3 -f ./clusterconfig/pickhaus-pickhaus-node-003.internal.pick.haus.yaml
talosctl apply-config -n 192.168.69.4 -f ./clusterconfig/pickhaus-pickhaus-node-004.internal.pick.haus.yaml
talosctl apply-config -n 192.168.69.5 -f ./clusterconfig/pickhaus-pickhaus-node-005.internal.pick.haus.yaml


 talhelper gencommand upgrade


   $ talosctl upgrade --nodes 10.20.30.40 \

      --image ghcr.io/siderolabs/installer:v1.9.0


talhelper gencommand reset --extra-flags --system-labels-to-wipe=STATE,--system-labels-to-wipe=EPHEMERAL,--graceful=false,--reboot


talosctl reset --talosconfig=./clusterconfig/talosconfig --nodes=192.168.69.1 --system-labels-to-wipe=STATE --system-labels-to-wipe=EPHEMERAL --graceful=false --reboot;




talosctl apply-config -n 192.168.69.1 -f ./clusterconfig/pickhaus-pickhaus-node-001.internal.pick.haus.yaml



talosctl reset --talosconfig=./clusterconfig/talosconfig --nodes=192.168.69.1 --system-labels-to-wipe=STATE --system-labels-to-wipe=EPHEMERAL --graceful=false --reboot;
talosctl reset --talosconfig=./clusterconfig/talosconfig --nodes=192.168.69.2 --system-labels-to-wipe=STATE --system-labels-to-wipe=EPHEMERAL --graceful=false --reboot;
talosctl reset --talosconfig=./clusterconfig/talosconfig --nodes=192.168.69.3 --system-labels-to-wipe=STATE --system-labels-to-wipe=EPHEMERAL --graceful=false --reboot;
talosctl reset --talosconfig=./clusterconfig/talosconfig --nodes=192.168.69.4 --system-labels-to-wipe=STATE --system-labels-to-wipe=EPHEMERAL --graceful=false --reboot;
