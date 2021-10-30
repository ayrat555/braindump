BASE_DIR=$(shell pwd)
SOURCE_ORG_FILES=$(BASE_DIR)/notes
EMACS_BUILD_DIR=/tmp/notes-home-build/
BUILD_DIR=/tmp/notes-home-build/.cache/org-persist/
HUGO_SECTION=notes

all: org2hugo

.PHONY: org2hugo
org2hugo:
	mkdir -p $(BUILD_DIR)
	cp -r $(BASE_DIR)/init.el $(EMACS_BUILD_DIR)
        # Build temporary minimal EMACS installation separate from the one in the machine.
	HOME=$(EMACS_BUILD_DIR) NOTES_ORG_SRC=$(SOURCE_ORG_FILES) HUGO_SECTION=$(HUGO_SECTION) HUGO_BASE_DIR=$(BASE_DIR) emacs -Q --batch --load $(EMACS_BUILD_DIR)/init.el --execute "(build/export-all)" --kill
