# Ubuntu

The commands are self-explanatory.

### System Control
```shell
systemctl poweroff
```
```shell
systemctl reboot
```
```shell
systemctl suspend
```
```shell
systemctl hibernate
```

### Bluetooth Control
```shell
bluetoothctl
```
Then, list devices to get the bluetooth device's MAC address
```shell
devices
```
Pair with the device
```shell
pair {mac_address_of_chosen_device}
```
Finally, connect with the device
```shell
connect {mac_address_of_chosen_device}
```

### Brightness Control
```shell
brightnessctl
```
