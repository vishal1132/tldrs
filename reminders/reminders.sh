quotes_file=${1:-/Users/vishal/work/src/github.com/vishal1132/tldrs/reminders/reminders.md} # path to reminders.md
total_quotes=$(cat $quotes_file | wc -l)
export total_quotes=$total_quotes 
random_number=$(perl -e 'print(int(rand($ENV{total_quotes}))+1)')
quote=$(cat $quotes_file | awk "NR==$random_number")
quote_title=$(echo $quote | awk -F ";" '{print $1}')
quote_body=$(echo $quote | awk -F ";" '{print $2}')
terminal-notifier -title reminder -subtitle "$quote_title" -message "$quote_body" -sound Glass -group reminders -execute "say $quote_body -r 200 -v Tessa"