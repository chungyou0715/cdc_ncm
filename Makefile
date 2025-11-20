#
# Makefile by appleboy <appleboy.tw at="" gmail.com="">
#
obj-m	+= cdc_ncm.o
KVERSION := $(shell uname -r)

all:
	$(MAKE) -C /lib/modules/$(KVERSION)/build M=$(PWD) modules
 
clean:
	$(MAKE) -C /lib/modules/$(KVERSION)/build M=$(PWD) clean
