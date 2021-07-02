wget -O- http://launchermeta.mojang.com/mc/game/version_manifest.json | jq .versions[0].url|xargs wget -O- | jq .assetIndex.url | xargs wget 
