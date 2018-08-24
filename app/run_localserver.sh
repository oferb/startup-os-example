#!/usr/bin/env bash

# Wrapper script for running grpc-web sample

RUNNER=$(which xdg-open)

echo "Building prerequisites: local_server, grpc web proxy, service js binary"
bazel build //app/local_server:local_server \
            @startupos_binaries//:grpcwebproxy \
            //app/client:hello_world_service_js_binary

echo "Copying js binary"
rm -f app/client/app.js
cp bazel-bin/app/client/hello_world_service_js_binary.js app/client/app.js


echo "Running local_server"
bazel run //app/local_server:local_server &

echo "Running grpc web proxy"
bazel run @startupos_binaries//:grpcwebproxy -- \
    --backend_addr=localhost:8001 \
    --run_tls_server=false
