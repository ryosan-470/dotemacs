EMACS ?= emacs
ELS = $(shell ls -1 *.el)
ELCS = $(ELS:.el=.elc)

all: $(ELCS)
	make $(ELS)
.el.elc:
	$(EMACS) --batch --eval '(byte-compile-file "$*.el")'
.PHONY:
clean:
	$(RM) $(ELCS)
