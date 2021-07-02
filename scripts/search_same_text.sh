# yes it is stupid, but is easy to understand
exec 2>"$0.log"

one(){
  value="${text#*=}"
  key="${text%%=*}"
  while read -r text; do
    valuej="${text#*=}"
    if [ "${valuej}" = "${value}" ]; then
      keyj="${text%%=*}"
      echo "${keyj}"
    fi
  done <java.lang | xargs -d $'\n' -r echo "${key[0]}"
}

while read -r text; do
  if [ "$1" = fast ]; then 
    one &
  else one
  fi
done <bedrock.lang >gotn.txt
