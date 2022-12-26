#!/bin/sh
if [ ! -f UUID ]; then
  UUID="f3bba3f0-cf6b-4912-8a6d-7f6f3b500727"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

