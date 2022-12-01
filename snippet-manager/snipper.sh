function add_snip(){
	read -p "Command > " command
	read -p "Description > " description
	a=$command":delim:"$description
	echo $a >> ~/snippets.txt
}

function search_snippets(){
	 cat ~/snippets.txt | awk -F ':delim:' '{print $2}' | fzf --reverse --height 50% --preview 'bat --style=numbers --color=always --line-range :500 ~/snippets.txt | grep -i {} |  sed "s/:delim:.*//g"' 
}

case $1 in
	add) add_snip ;;
	help) echo "help
	add\t to add a snippet
	search\t to search a snippet";;
	search) search_snippets ;;
	*) echo "default prompt" ;;
esac
