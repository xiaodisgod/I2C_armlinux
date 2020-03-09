KVERS=$(shell uname -r)
#Kernel modules
	obj-m +=hello.ob
#Specify flags for the module comilation
EXTRA_CFLAGS =-g -O0

build:kernel_modules

kernel_modules:
	make -C /lib/modules/$(KVERS)/build M=$(CURDIR) modules

clean:
	make -C /lib/modules/$(KVERS)/build M=$(CURDIR) clean
	