PROGRAM		= hellow
OBJ			= $(PROGRAM).o

CC			= g++
#CC			= gcc
CFLAGS		= -O4
#LDFLAGS	= -lm

RM			= rm -f

all: $(PROGRAM)

$(PROGRAM): $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS) $(LDFLAGS)

.cpp.o: 
	$(CC) -c $<

.PHONY: clean

clean: 
	$(RM) $(PROGRAM) $(OBJ)

#$B$3$3$K3F%U%!%$%k$N0MB84X78$r5-=R(B
$(PROGRAM).o: $(PROGRAM).cpp

