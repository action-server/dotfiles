#!/bin/sh

# Exit on error
set -e
# Set internal field separator
IFS='
'
SCRIPT_NAME="$(basename "$0")"

print_error(){
	message="$1"
	echo "${SCRIPT_NAME} - Error: ${message}" >&2
}

create_symbolic_link(){
	dist_dir="$1"
	src_dir="$(pwd)"
	files="$(find . \( -name "$SCRIPT_NAME" -o -name '\.git' -o -name '.gitignore' \) -prune -o -type f -print)"

	for file in $files; do
		file_path="$(printf '%s' "$file" | sed 's/^\.\///')"
		dir_path="$(dirname "$file_path")"
		mkdir -p "${dist_dir}/${dir_path}"
		ln -sf "${src_dir}/${file_path}" "${dist_dir}/${file_path}"
	done
}

main(){
	if [ "$#" -ne 1 ]; then
		print_error 'Usage: ./install.sh <destination_full_path>'
		exit 1
	fi

	if [ ! -d "$1" ]; then
		print_error "'${1}' is not a directory."
		exit 1
	fi

	create_symbolic_link "$1"
}

main "$@"
