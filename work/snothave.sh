block=$(cat block.txt)

while read -r s; do
  tile="${s%%=*}"
  while read -r; do
    t=($REPLY)
    if [ "${t[0]}" = "${tile}" ]; then
      continue 2
    fi
  done<<EOM
$block
EOM
  echo "${s}"
done<tile.txt