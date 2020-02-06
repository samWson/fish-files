# Fish Files

These are my custom functions and configuration for the Fish shell.

## Usage

This repository is for developing and maintaining fish files. To use them copy
them to the appropriate directory:
- Autoloading functions: `~/.config/fish/functions/`
- Shell initialization:  `~/.config/fish/config.fish`

Fish shell does not seem to like using symbolic links as autoloading functions.
To help make the process of updating `*.fish` files in the directories less manual
the `Makefile` has some tasks.

### Copying Autoloading Functions

`make autoloading_functions` will copy all the `*.fish` files in `/autoloading_functions`
to `~/.config/fish/functions/`, overwriting existing files with the same name in
the process.

## Contributing

Contributions are welcome.

## License

This repository is open source software under the MIT license.
