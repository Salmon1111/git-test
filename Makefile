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

#ここに各ファイルの依存関係を記述
$(PROGRAM).o: $(PROGRAM).cpp

