# yes it is stupid, but is easy to understand
search_file="$(cat item_java.txt)"

one(){
  value="${text#*=}"
  key="${text%%=*}"
  while read -r file; do
    file_value="${file#*=}"
    if [ "${file_value}" = "${value}" ]; then
      echo "${file%%=*}"
    fi
  done <<EOM | xargs -d $'\n' -r echo "${key}"
$search_file
EOM
}

while read -r text; do
  if [ "$1" = fast ]; then 
    one &
  else one
  fi
done <item_bedrock.lang >got_item.txt
