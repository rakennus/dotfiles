# faster input rate when keeping key pressed
xset r rate 300 40


# disable mouse from waking up pc from suspend
/etc/udev/rules.d/50-wake-on-device.rules

First, identify the vendor and product identifiers of the USB device. They will be used to recognize it in the udev rule. For example:
```bash
$ lsusb | grep Logitech
Bus 007 Device 002: ID 046d:c52b Logitech, Inc. Unifying Receiver
```

Then, find where the device is connected to using:
```bash
$ grep c52b /sys/bus/usb/devices/*/idProduct
/sys/bus/usb/devices/1-1.1.1.4/idProduct:c52b
```

ACTION=="add", SUBSYSTEM=="usb", DRIVERS=="usb", ATTRS{idVendor}=="046d", ATTRS{idProduct}=="c547", ATTR{power/wakeup}="disabled", ATTR{driver/3-2.1/power/wakeup}="disabled"
