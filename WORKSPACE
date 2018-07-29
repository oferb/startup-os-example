load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "io_bazel_rules_docker",
    sha256 = "6dede2c65ce86289969b907f343a1382d33c14fbce5e30dd17bb59bb55bb6593",
    strip_prefix = "rules_docker-0.4.0",
    urls = ["https://github.com/bazelbuild/rules_docker/archive/v0.4.0.tar.gz"],
)

load(
    "@io_bazel_rules_docker//container:container.bzl",
    "container_pull",
    container_repositories = "repositories",
)

container_repositories()

container_pull(
  name = "java_base",
  registry = "gcr.io",
  repository = "distroless/java",
  digest = "sha256:b2a1413a48ba78568126ed514416db0c92db4d1635ce78125d6f5932d9e1f813",
)


http_archive(
    name = "startupos",
    sha256 = "65f8330b73174467f1d2d311c17941be1e03b338c674484a2980f8be959ef3ce",
    strip_prefix = "startup-os-861b56c09a9bacb0190e0c372956c6b9da132e7f",
    urls = ["https://github.com/google/startup-os/archive/861b56c09a9bacb0190e0c372956c6b9da132e7f.tar.gz"],
)


http_archive(
    name = "startupos_binaries",
    sha256 = "0708b7b7f8ead7544bd9b03383a9829b33e6c7ce3661a316d328c57037ca7261",
    strip_prefix = "startupos-binaries-3eaa31c93ca9ecb22ad8c348649d1ba4f61f332c",
    urls = ["https://github.com/oferb/startupos-binaries/archive/3eaa31c93ca9ecb22ad8c348649d1ba4f61f332c.tar.gz"],
)


load("//third_party/maven:workspace.bzl", "maven_dependencies")
maven_dependencies()


http_file(
    name = "buildifier",
    executable = True,
    sha256 = "d7d41def74991a34dfd2ac8a73804ff11c514c024a901f64ab07f45a3cf0cfef",
    urls = ["https://github.com/bazelbuild/buildtools/releases/download/0.11.1/buildifier"],
)

http_file(
    name = "buildifier_osx",
    executable = True,
    sha256 = "3cbd708ff77f36413cfaef89cd5790a1137da5dfc3d9b3b3ca3fac669fbc298b",
    urls = ["https://github.com/bazelbuild/buildtools/releases/download/0.11.1/buildifier.osx"],
)


http_file(
    name = "protoc_bin",
    executable = True,
    sha256 = "84e29b25de6896c6c4b22067fb79472dac13cf54240a7a210ef1cac623f5231d",
    urls = ["https://github.com/google/protobuf/releases/download/v3.6.0/protoc-3.6.0-linux-x86_64.zip"]
)

http_file(
    name = "protoc_bin_osx",
    executable = True,
    sha256 = "768a42032718accd12e056447b0d93d42ffcdc27d1b0f21fc1e30a900da94842",
    urls = ["https://github.com/google/protobuf/releases/download/v3.6.0/protoc-3.6.0-osx-x86_64.zip"]
)

http_jar(
    name = "grpc_polyglot",
    sha256 = "c2a453921632c0c3559f9df92e1699b69c784181f36a316f9927b70f52e5a7d5",
    url = "https://github.com/grpc-ecosystem/polyglot/releases/download/v1.6.0/polyglot.jar"
)

bind(
    name = "proto_compiler",
    actual = "@startupos//tools:protoc"
)

bind(
    name = "proto_java_toolchain",
    actual = "@startupos//tools:java_toolchain"
)

bind(
    name = "grpc_java_plugin",
    actual = "@startupos_binaries//:grpc_java_plugin"
)
