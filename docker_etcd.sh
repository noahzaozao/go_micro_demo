docker run -d \
    -p 2379:2379 \
    -p 2380:2380 \
    --name etcd \
    --volume=/tmp/etcd-data.tmp:/etcd-data \
    --restart=always \
    quay.io/coreos/etcd \
    /usr/local/bin/etcd \
    --name etcd0 \
    --data-dir /etcd-data \
    --listen-client-urls http://0.0.0.0:2379 \
    --advertise-client-urls http://0.0.0.0:2379 \
    --listen-peer-urls http://0.0.0.0:2380 \
    --initial-advertise-peer-urls http://0.0.0.0:2380 \
    --initial-cluster etcd0=http://0.0.0.0:2380 \
    --initial-cluster-token tkn