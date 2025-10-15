CC       = gcc
CFLAGS   = -Wall -Wextra
SRCS     = $(wildcard *.c)
OBJECTS  = $(SRCS:.c=.o)
TARGET   = diary

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CC) -o $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	rm -f $(OBJECTS) $(TARGET)

