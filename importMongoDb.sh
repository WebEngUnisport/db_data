docker run -d -p 27017:27017 mongo

sleep 2s
mongoimport --db unisport9 --collection courses --drop --jsonArray --file output-fribourg-translated.json

sleep 2s
mongoimport --db unisport9 --collection universities --drop --jsonArray --file uni.json

sleep 2s
mongoimport --db unisport9 --collection categories --drop --jsonArray --file category.json

sleep 2s
mongoimport --db unisport9 --collection courses --jsonArray --file output-bern-translated.json

sleep 2s
mongoimport --db unisport9 --collection courses --jsonArray --file output-neuch-translated.json
