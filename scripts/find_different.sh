texts="$(cat block_same.txt)"
while read -r text; do
  keyt="${text%%=*}"
  while read -r keys; do
    key=(${keys})
    key="${key[0]}"
    if [ "${keyt}" = "${key}" ]; then
      continue 2
    fi
  done<<EOM
${texts}
EOM
  echo "${keyt}"
done<block_bedrock.lang
