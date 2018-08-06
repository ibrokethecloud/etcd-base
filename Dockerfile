FROM alpine
ADD https://github.com/coreos/etcd/releases/download/v3.3.9/etcd-v3.3.9-linux-amd64.tar.gz /tmp
RUN tar zxvf /tmp/etcd-v3.3.9-linux-amd64.tar.gz etcd-v3.3.9-linux-amd64/etcdctl -C /usr/bin --strip-components=1 && \
    tar zxvf /tmp/etcd-v3.3.9-linux-amd64.tar.gz etcd-v3.3.9-linux-amd64/etcd -C /usr/bin --strip-components=1 && \
    rm /tmp/etcd-v3.3.9-linux-amd64.tar.gz
