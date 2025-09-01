SOURCES := $(wildcard *.c3)
TARGETS := $(SOURCES:.c3=)

# Regola predefinita
all: $(TARGETS)
print:
	@echo $(SOURCE)
	@echo $(TARGETS)
# Regola per ogni eseguibile
%: %.c3
	c3c compile $<

# Pulisce tutti gli eseguibili generati
clean:
	rm -f $(TARGETS)
