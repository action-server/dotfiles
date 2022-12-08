#!/bin/sh

# Exit on error
set -e
# Set internal field separator
IFS='
'
# Set script name
SCRIPT_NAME="$(basename $0)"
DIST_DIR="${HOME}"

create_symbolic_link(){
	directories="$(find . -name '\.git' -prune -o -type d -print)"
	for directory in $directories; do
		new_directory="$(printf '%s' "$directory" | sed 's/^\.\///' )"
		mkdir -p "${DIST_DIR}/${new_directory}"
	done

	files="$(find . \( -name "$SCRIPT_NAME" -o -name '\.git' -o -name '.gitignore' \) -prune -o -type f -print)"
	for file in $files; do
		new_file="$(printf '%s' "$file" | sed 's/^\.\///' )"
		ln -sf "$(pwd)/${new_file}" "${DIST_DIR}/${new_file}"
	done
}

main(){
	create_symbolic_link
}

main "$@"
