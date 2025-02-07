GO=go
GOCC=go build
CCFLAGS=-v
GNU_GOCC=gccgo

SRC=$(shell find . -name '*.go' | grep -v '_test\.go')
_SRC=main.go
TARGET=waybackurls


all: $(TARGET)
$(TARGET): $(SRC)
	$(GOCC) $(CCFLAGS) -o $(TARGET) $(_SRC)


gcc: $(SRC)
	$(GOCC) $(CCFLAGS) -compiler $(GNU_GOCC) -o $(TARGET) $(_SRC)


.PHONY:
clean:
	rm -f $(TARGET)
