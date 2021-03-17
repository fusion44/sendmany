#!/bin/bash

set -e

# path to LND lnrpc directory
LND_RPC_DIR="/path/to/lnd/lnrpc"

# path to protoc-gen-dart
PROTOC_DART_GEN_BIN="/path/to/protobuf-dart/protoc_plugin/bin/protoc-gen-dart"

# generate compiles the *.pb.dart stubs from the *.proto files.
function generate() {
  echo "Generating root gRPC protos"
  
  PROTOS=$(find ${LND_RPC_DIR} -name "*.proto")

  for file in $PROTOS; do
    DIRECTORY=$(dirname "${file}")
    echo "Generating protos from ${file}, into ${DIRECTORY}"
  
    # Generate the protos.
    protoc --plugin=protoc-gen-dart=${PROTOC_DART_GEN_BIN} \
      -I/usr/local/include -I. \
      --dart_out=grpc:. \
      --proto_path=${LND_RPC_DIR} \
      "${file}"
  done
}

# Compile the lnrpc package.
generate