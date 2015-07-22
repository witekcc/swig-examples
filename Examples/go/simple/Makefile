TOP        = ../..
#SWIG       = $(TOP)/../preinst-swig
SWIG			 = swig
SRCS       = simple.c
TARGET     = example
INTERFACE  = example.i

check: build
	$(MAKE) -f $(TOP)/Makefile.in SRCDIR='$(SRCDIR)' SRCS='$(SRCS)' TARGET='$(TARGET)' INTERFACE='$(INTERFACE)' go_run

build:
	$(MAKE) -f $(TOP)/Makefile.in SRCDIR='$(SRCDIR)' SRCS='$(SRCS)' SWIG='$(SWIG)' \
	TARGET='$(TARGET)' INTERFACE='$(INTERFACE)' go

clean:
	$(MAKE) -f $(TOP)/Makefile.in SRCDIR='$(SRCDIR)' INTERFACE='$(INTERFACE)' go_clean
