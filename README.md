### XMRig-d
Dockerized XMRig, ready to go and transparent: no dependencies outside of XMRig source code and standard Ubuntu image. 

Requirements:
- Docker (Win or Linux)

## Get Started
Start mining with a single command:
```bash
docker run --restart unless-stopped --name xmrig-d -it ghcr.io/spencershepard/xmrig-d
```

or...
## Run with your xmrig params

Add to the end of 'docker run' commands to override the default xmrig args. For example:

```bash
docker run -it ghcr.io/spencershepard/xmrig-d -o pool-address:port -u wallet-address -p worker-name
```
or...
## Build it yourself
1) Build xmrig and the docker image:
```bash
docker build -t xmrig-d .
```

2. Run the miner:
```bash
docker run --restart unless-stopped --name xmrig-d -it xmrig-d
```

