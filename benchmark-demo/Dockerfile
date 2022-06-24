FROM alpine:3.16
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories && apk add wrk curl jq
COPY . /benchmark
WORKDIR /benchmark
ENTRYPOINT ["./benchmark.sh"]
