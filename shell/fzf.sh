# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"

export FZF_DEFAULT_OPTS="--height ~100% --border"


# fzf directories including the hidden ones
function fzcd() {
	dir=$(find ${1:-.} -type d 2>/dev/null | fzf --no-multi) && cd "$dir"
}

# fzf file and open it in the editor
function fzed() {
	local files=$(find ${1:-.} -type f 2>/dev/null | fzf --multi)
	[ -n "$files" ] && ${EDITOR:-vim} "${files[@]}"
}

# fzf file and open it in the editor
function fzced() {
	local file=$(find ${1:-.} -type f 2>/dev/null | fzf --no-multi)
	if [ -n "$file" ]; then
		cd $(dirname "$file")
		vim $(basename "$file")
	fi
}
