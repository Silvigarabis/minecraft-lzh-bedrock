texts="$(cat java.lang)"
while read -r key; do
  key=($key)
  while read -r jtext; do
    keyj="${jtext%%=*}"
    if [ "$keyj" = "${key[1]}" ]; then
      echo "${key[0]}=${jtext#*=}"
    fi
  done <<EOM
$texts
EOM
done<got.txt >lzh_bedrock.lang