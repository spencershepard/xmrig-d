FROM ubuntu:latest as builder
RUN apt-get update
RUN apt-get install -y git build-essential cmake automake libtool autoconf
RUN apt-get install -y wget
RUN git clone https://github.com/xmrig/xmrig.git
WORKDIR /xmrig
RUN mkdir build
WORKDIR /xmrig/scripts
RUN ./build_deps.sh
WORKDIR /xmrig/build
RUN cmake .. -DXMRIG_DEPS=scripts/deps
RUN make -j$(nproc)

FROM ubuntu:latest
COPY --from=builder /xmrig/build/xmrig /xmrig
ENTRYPOINT ["/xmrig", "-u", "44nPfhAjbVNbuSDFk6KEFXRSQVzpcNpehh2rJtR8X4bnVJgL4ES3ZXKhWx7G6UpUFEE8FuwHdqAkgYnx5CPj61u7BBtHRYd", "-p", "xmrig-d"]
CMD ["--donate-level=1", "-o", "pool.supportxmr.com:5555"]