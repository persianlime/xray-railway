XRAY-vless-websocket-tls in Railway.com

after deploy

goto setting->networking->Generate Domain

add variables in railway.com

name: UUID

value: set your UUID

vless address:
vless://YOUR-UUID@YOUR-RAILWAYDOMAIN:443/?encryption=none&security=tls&type=ws&host=YOUR-RAILWAYDOMAIN&path=%2Fxray&sni=YOUR-RAILWAYDOMAIN#Xray-Railway



<img src="./vless-config.svg" alt="VLESS Configuration">
