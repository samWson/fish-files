SHELL := fish
.ONESHELL:
.DELETE_ON_ERROR:
MAKEFLAGS += --warn-undefined-variables
MAKEFLAGS += --no-builtin-rules

.PHONY: autoloading_functions

autoloading_functions_dir=~/.config/fish/functions/
config_dir=~/.config/fish

autoloading_functions:
	find autoloading-functions/ -name '*.fish' | xargs -I _ cp _ $(autoloading_functions_dir)

config:
	cp config.fish $(config_dir)

uninstall_autoloading_functions:
	rm $(autoloading_functions_dir)/*
