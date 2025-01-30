# Install


install binary: https://developers.cloudflare.com/cloudflare-one/connections/connect-networks/downloads/
cloudflared tunnel login
from this directory:
cp ~/.cloudflared/cert.pem .
sops -e -i cert.pem

cp ~/.cloudflared/1a08b5ca-85b5-45a2-a7d5-80635677c773.json credentials.json
sops -e -i credentials.json
