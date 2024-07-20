Build xmrig and the docker image:
```bash
docker build -t xmr-d .
```

Run the miner:
```bash
docker run --rm -it xmr-d
```

Run from pre-built image:
```bash
docker run --rm -it ghcr.io/spencershepard/xmr-d
```
