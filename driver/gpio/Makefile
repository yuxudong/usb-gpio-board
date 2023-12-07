obj-m += usb-gpio12.o

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
install:
	cp usb-gpio12.ko  /lib/modules/$(shell uname -r)/kernel/drivers/gpio
	depmod -a
uninstall:
#	rmmod usb_gpio12
	rm  /lib/modules/$(shell uname -r)/kernel/drivers/gpio/usb-gpio12.ko
	depmod -a
