echo "markdown title"
read md_title
echo "notification title"
read nf_title
echo "reminder"
read reminder
sed -i '' "s/## $md_title/## $md_title \n$nf_title; $reminder\n/g" reminders.md
