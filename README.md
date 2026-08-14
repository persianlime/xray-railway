# XRAY VLESS WebSocket TLS on Railway

Deploy **XRAY VLESS WebSocket TLS** on [Railway.com](https://railway.com/).

## 🚀 Deploy

Deploy this repository to Railway:

**GitHub Repository:**
https://github.com/babakelectronic/xray-railway

After deployment, follow these steps.

### 1. Generate Domain

In your Railway project, go to:

**Settings → Networking → Generate Domain**

Railway will generate a public domain for your service.

### 2. Add UUID Variable

Go to:

**Railway → Your Service → Variables**

Add the following variable:

```text
Name: UUID
Value: YOUR-UUID
```

For example:

```text
UUID=xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
```

Replace `YOUR-UUID` with your own UUID.

### 3. VLESS Configuration

Use these settings in your VLESS client:

```text
Protocol: VLESS
Address: YOUR-RAILWAY-DOMAIN
Port: 443
UUID: YOUR-UUID
Network: WebSocket
WebSocket Path: /vless
TLS: Enabled
SNI: YOUR-RAILWAY-DOMAIN
Encryption: none
```

### 4. VLESS Link

Your VLESS configuration will look like this:

```text
vless://YOUR-UUID@YOUR-RAILWAY-DOMAIN:443?encryption=none&security=tls&type=ws&path=%2Fvless#XRAY-Railway
```

Replace:

* `YOUR-UUID` → Your UUID
* `YOUR-RAILWAY-DOMAIN` → Your Railway generated domain

## 📋 Example

```text
Protocol: VLESS
Address: example.up.railway.app
Port: 443
UUID: xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
Network: WebSocket
Path: /vless
TLS: ON
SNI: example.up.railway.app
```

## ⚠️ Important

Make sure the `UUID` in Railway is the same UUID used in your VLESS client.

WebSocket Path:

```text
/vless
```

TLS:

```text
ON
```

Port:

```text
443
```

---

## Credits

[Xray-core](https://github.com/XTLS/Xray-core)

[Railway](https://railway.com/)




<img src="./vless-config.svg" alt="VLESS Configuration">
