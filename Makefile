SHELL := fish
.ONESHELL:
.DELETE_ON_ERROR:
MAKEFLAGS += --warn-undefined-variables
MAKEFLAGS += --no-builtin-rules

.PHONY: autoloading_functions

autoloading_functions_dir=~/.config/fish/functions/

autoloading_functions:
	find autoloading-functions/ -name '*.fish' | xargs -I _ cp _ $(autoloading_functions_dir)
