quotes_file=${1:-~/scripts/reminders.md}
total_quotes=$(cat $quotes_file | wc -l)
export total_quotes=$total_quotes 
random_number=$(perl -e 'print(int(rand($ENV{total_quotes}))+1)')
quote=$(cat $quotes_file | awk "NR==$random_number")
echo $quote | xargs -I {} terminal-notifier -title reminder -subtitle "hope you remember to" -message {} -sound Glass -group reminders -execute "say {} -r 220 -v Tessa"
