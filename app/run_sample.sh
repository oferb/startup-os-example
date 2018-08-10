#!/usr/bin/env bash

# Wrapper script for running grpc-web sample

html_file="app/client/sample.html"
platform=$(uname)

if [ "$platform" == "Darwin" ]; then
    RUNNER=$(which open)
elif [ "$platform" == "Linux" ]; then
    RUNNER=$(which xdg-open)
else
    echo "Platform ($platform) does not have a binary for auto-opening files"
    echo "Open $html_file in browser manually"
    exit 1
fi

echo "Building prerequisites: local_server, grpc web proxy, service js binary"
bazel build //app/local_server:local_server \
            @startupos_binaries//:grpcwebproxy \
            //app/client:hello_world_service_js_binary

echo "Copying js binary"
rm -f app/client/app.js
cp bazel-bin/app/client/hello_world_service_js_binary.js app/client/app.js


echo "Running local_server"
bazel run //app/local_server:local_server &

echo "Opening browser"
$RUNNER $html_file

echo "Running grpc web proxy"
bazel run @startupos_binaries//:grpcwebproxy -- \
    --backend_addr=localhost:8001 \
    --run_tls_server=false
