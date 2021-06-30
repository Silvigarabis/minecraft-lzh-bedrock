# yes it is stupid, but is easy to understand

while read -r; do
  {
    value=$(echo "$REPLY"|sed -E 's/=(.*)/\1/')
    key=($(echo "$REPLY"|sed 's/=/ /'));key="${key[0]}"
    while read -r; do
      valuej=($(echo "$REPLY"|sed -E 's/=(.*)/\1/'))
      if [ "${valuej}" = "${value}" ]; then
        keyj=($(echo "$REPLY"|sed 's/=/ /'))
        echo "${keyj[0]}"
      fi
    done <java.lang | xargs -d $'\n' -r printf "${key[0]}"
  } &
done <bedrock.lang >got.txt
