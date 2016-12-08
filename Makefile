PATH_SRC = src/
PATH_BIN = bin/
EXE = labyrith.exe main.o
MAIN = $(PATH_SRC)main.c
DELETE = $(PATH_BIN)*
CREATE_BIN = mkdir -p bin

#all : labyrith.exe

labyrith.exe : main.o
	gcc -o $@ $<
	$(CREATE_BIN)
	mv $@ $< bin/

main.o: $(MAIN)
	gcc -c $<

clean:
	rm -r $(DELETE)