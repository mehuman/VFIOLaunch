### Launcher for VM with USB Passthrough and Switching Input

#### How to get USB device ID
- run `lsusb` you'll get an output like
`Bus 002 Device 054: ID 1234:5678 Texas Instruments, Inc. `
- Put the ID into a copy of the `usbdevice.xml`

#### How to get input switching
- run `sudo ddccontrol -p`. If you get an error about monitor not recognized, you'll need to [update your database](https://github.com/ddccontrol/ddccontrol-db#installation)
- In the output find the "Input Sources" section, make note of the address. Also make note of the value of the input you'd like the laucher to switch.
```
> Input settings
        > PIP/PBP
                > id=PbP, name=PbP/PIP mode, address=0xe9, delay=-1ms, type=2
                  Possible values:
                        > id=Off - name=Off, value=0
                        > id=PbP - name=PbP, value=36
                        > id=PiP large - name=PiP Large, value=34
                        > id=PiP small - name=PiP Small, value=33
                  supported, value=0, maximum=255
        > Input sources
                > id=inputsource, name=Input Source Select (Main), address=0x60, delay=-1ms, type=2
                  Possible values:
                        > id=dp - name=DisplayPort, value=15
                        > id=hdmi1 - name=HDMI-1, value=17
                        > id=hdmi2 - name=HDMI-2, value=18
                        > id=usb-c - name=USB-C, value=27
                  supported, value=3855, maximum=4626
                > id=inputsource_sub1, name=Input Source Select (Sub #1), address=0xe8, delay=-1ms, type=2
                  Possible values:
                        > id=dp - name=DisplayPort, value=15
                        > id=hdmi1 - name=HDMI-1, value=17
                        > id=hdmi2 - name=HDMI-2, value=18
                        > id=usb-c - name=USB-C, value=27
                  supported, value=17, maximum=65535
```
