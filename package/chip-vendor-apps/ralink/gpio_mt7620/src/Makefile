EXEC = gpio
#CFLAGS += -I$(ROOTDIR)/$(LINUXDIR)/drivers/char

all: $(EXEC)

$(EXEC): $(EXEC).c
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $@.c $(LDLIBS)

clean:
	-rm -f $(EXEC) *.elf *.gdb *.o

