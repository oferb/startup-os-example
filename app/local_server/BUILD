load("@io_bazel_rules_docker//container:container.bzl", "container_image")

java_library(
  name = "local_server_lib",
  srcs = [
    "LocalServer.java"
  ],
  deps = [
        "@startupos//common:dagger_with_annotation_processor",
        "//app/local_server/service:hello_world_service",
        "//third_party/maven/com/google/flogger",
        "//third_party/maven/com/google/flogger:flogger_system_backend",
        "//third_party/maven/io/grpc:grpc_core",
        "//third_party/maven/io/grpc:grpc_netty",
        "//third_party/maven/io/grpc:grpc_services",
        "//third_party/maven/javax/inject:javax_inject",
    ],
)

java_binary(
  name = "local_server",
  main_class = "com.google.startuposexample.app.localserver.LocalServer",
  runtime_deps = [":local_server_lib"],
)


container_image(
    name = "local_server_image",
    base = "@java_base//image",
    files = [":local_server_deploy.jar"],
    cmd = ["local_server_deploy.jar"],
    ports = ["8001"]
)
