one(){
  local has=0
  key=${keys[0]}
  while read -r bkey; do
    if [ "$key" = "$bkey" ]; then
      has=0
      break
    fi
  done<<EOM
$text
EOM
  if [ "$has" = 0 ]; then
    echo "$key"
  fi
}

text="$(cat bedrock_lzh.lang)"

while read -r keys; do
  if [ "fast" = "$1" ]; then
    one &
  else one
  fi
done<got.txt >not_got.txt