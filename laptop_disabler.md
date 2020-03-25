# Disable Dell Inspiron N4050 touchpad and internal keyboard

Both the internal keyboard and touchpad are incredibly buggy, they randomly trigger and spread chaos. So the solution is to disable them. First, use the command

```shell
xinput list
```

To get the list of input devices. Then, find the ids of the keyboard and of the touchpad and disable them with:

```shell
xinput disable [id]
```
