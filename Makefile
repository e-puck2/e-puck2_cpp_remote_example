CC = g++
RM = rm
SRC = main.cpp
TARGET = main
INCLUDES = -I. -I../epuck2_remote_bluetooth_library
LIBS = -L. -L../epuck2_remote_bluetooth_library
CFLAGS = $(INCLUDES) $(LIBS)
LFLAGS = -lepuck2bt -lpthread
DEPS =
OBJS =

%.o: %.c $(DEPS)
	$(CC) -c $< -o $@ $(CFLAGS)

all: $(OBJS)
	$(CC) $(SRC) $(CFLAGS) -o $(TARGET) $(OBJS) $(LFLAGS)

clean:
	$(RM) -f $(TARGET)
	$(RM) *.o
