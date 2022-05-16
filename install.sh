#!/bin/sh

set -e

create_symbolic_link(){
	cd "$1"
	find  . -type d -exec bash -c 'mkdir -p .{}' \;
	find  . -type f -exec bash -c 'ln -sf "$(pwd)"/"$(printf {} | sed "s/^\.\///")" "$HOME"/"$(printf {} | sed "s/^\.\///")"' \;
}

main(){
	create_symbolic_link .
}

main "$@"
