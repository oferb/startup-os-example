package(default_visibility = ["//visibility:public"])

load("//third_party:java_grpc_library.bzl", "java_grpc_library")

proto_library(
    name = "hello_world_service_proto",
    srcs = ["hello_world_service.proto"],
)

java_proto_library(
    name = "hello_world_service_java_proto",
    deps = [":hello_world_service_proto"],
)

java_grpc_library(
    name = "hello_world_service_java_grpc",
    srcs = [":hello_world_service_proto"],
    deps = [
        ":hello_world_service_java_proto",
    ],
)

java_library(
    name = "hello_world_service",
    srcs = [
        "HelloWorldService.java",
    ],
    deps = [
        ":hello_world_service_java_grpc",
        ":hello_world_service_java_proto",
        "//third_party/maven/io/grpc:grpc_core",
        "//third_party/maven/io/grpc:grpc_stub",
        "//third_party/maven/javax/inject:javax_inject",
    ],
)
