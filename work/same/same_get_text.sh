one(){
        key=($key)
        while read -r jtext; do
                keyj="${jtext%%=*}"
                if [ "$keyj" = "${key[1]}" ]; then
                        echo "${key[0]}=${jtext#*=}"
                fi
        done <<EOM
$texts
EOM
}
texts="$(cat lzh.lang)"
while read -r key; do
        if [ "$1" = fast ]; then
                one &
        else one
        fi
done<gotc.txt >lzh_bedrock.lang
