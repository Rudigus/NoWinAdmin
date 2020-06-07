# Ubuntu

The commands are self-explanatory.

## After formatting
```shell
sudo apt install git
```
```shell
sudo apt install build-essential
```
## Drive
```shell
sudo snap install drive
```
```shell
drive init
```
```shell
drive pull
```
```shell
drive push -ignore-conflict
```

## System Control
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

## Bluetooth Control
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

## Brightness Control
```shell
brightnessctl
```

## Kernel Commands

Disclaimer: <kbd>SysRq</kbd> is usually the <kbd>Prt Scrn</kbd> key.

### Restarts machine

<kbd>Alt</kbd> + <kbd>SysRq</kbd> + <kbd>r</kbd> , <kbd>e</kbd> , <kbd>i</kbd> , <kbd>s</kbd> , <kbd>u</kbd> , <kbd>b</kbd>

Mnemonics: "Raising Elephants Is So Utterly Boring", "Reboot Even If System Utterly Broken"

### Shuts down machine

<kbd>Alt</kbd> + <kbd>SysRq</kbd> + <kbd>r</kbd> , <kbd>e</kbd> , <kbd>i</kbd> , <kbd>s</kbd> , <kbd>u</kbd> , <kbd>o</kbd>

### Brief explanation from mcduck

"R" changes the keyboard to raw mode

"E" tells all running programs to stop what they are doing and close. Same as if you selected "Close" from a programs menu.

"I" interrupts whatever programs didn't close in the previous step, and closes them.

"S" syncs the discs, writing whatever data might be in the buffers into the discs.

"U" remounts hard drives in read-only mode. We just made sure that discs are synced in previous step, so we don't want to make any more changes to them.

"O" shuts down (or "B" reboots)

Remember to give the system a bit of time between each command to allow it to actually complete.

So, in short, the whole thing tells all programs to close, kills whatever programs didn't close on their own, then makes sure all data that should be written to drives really gets there, and finally restarts or shuts down the system.

[Source](https://ubuntuforums.org/archive/index.php/t-1701896.html)
