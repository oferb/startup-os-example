load(
    "@com_github_grpc_grpc_web//bazel:closure_grpc_web_library.bzl",
    "closure_grpc_web_library",
)
load(
    "@io_bazel_rules_closure//closure:defs.bzl",
    "closure_js_library",
    "closure_proto_library",
    "closure_js_binary",
)

closure_proto_library(
    name = "hello_world_service_closure_proto",
    deps = ["//app/local_server/service:hello_world_service_proto"],
)

closure_grpc_web_library(
    name = "hello_world_service_grpc",
    # |mode| can be grpcweb or grpcwebtext.
    # For more details, see https://github.com/grpc/grpc-web#wire-format-mode
    mode = "grpcweb",
    deps = ["//app/local_server/service:hello_world_service_proto"],
)

closure_js_library(
    name = "hello_world_service_js_library",
    srcs = [
        "application_main.js",
        "entrypoint.js",
    ],
    deps = [
        ":hello_world_service_closure_proto",
        ":hello_world_service_grpc",
    ],
)

closure_js_binary(
    name = "hello_world_service_js_binary",
    entry_points = ["goog:app.entrypoint"],
    deps = [
        ":hello_world_service_js_library",
    ],
)
