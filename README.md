Build xmrig and the docker image:
```bash
docker build -t xmrig-d .
```

Run the miner:
```bash
docker run --rm -it xmrig-d
```

Run from pre-built image:
```bash
docker run --rm -it ghcr.io/spencershepard/xmrig-d
```
