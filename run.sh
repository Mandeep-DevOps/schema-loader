# We assume we get the following variables from K8S
# COMPONENT
# SCHEMA_TYPE

mkdir /app
cd /app
git clone https://github.com/raghudevopsb77/$COMPONENT .

source /parameters/params

if [ "$SCHEMA_TYPE" == "mongo" ]; then
  curl -L -O https://truststore.pki.rds.amazonaws.com/global/global-bundle.pem
  mongo --ssl --host $DOCDB_ENDPOINT:27017 --sslCAFile global-bundle.pem --username $DOCDB_USER --password $DOCDB_PASS < /app/schema/$COMPONENT.js
fi

