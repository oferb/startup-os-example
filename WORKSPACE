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
    sha256 = "abb9cef989265622273d504376a17d7f7ba4f89afd26405ac61e251248efc588",
    strip_prefix = "startup-os-bb205ed849a51122cc09c663e2bab153e4319d60",
    urls = ["https://github.com/google/startup-os/archive/bb205ed849a51122cc09c663e2bab153e4319d60.tar.gz"],
)


http_archive(
    name = "startupos_binaries",
    strip_prefix = "startupos-binaries-76819481d60ad379ea1b4890998cd3bb4554e20c",
    urls = ["https://github.com/oferb/startupos-binaries/archive/76819481d60ad379ea1b4890998cd3bb4554e20c.tar.gz"],
)


load("//third_party/maven:workspace.bzl", "maven_dependencies")
maven_dependencies()


# FIXME: update to use official repository.
# when https://github.com/bazelbuild/rules_closure/pull/278
# is merged

http_archive(
    name = "io_bazel_rules_closure",
    strip_prefix = "rules_closure-16e0cded9bc10285aed33e274313c352ab377a9e",
    sha256 = "50a7e13d7daeeb11ae4420fc79934dc6d5b54d7ceedfef510299cc1ace7c2667",
    urls = [
          "https://github.com/Yannic/rules_closure/archive/16e0cded9bc10285aed33e274313c352ab377a9e.zip",
    ],
)

load("@io_bazel_rules_closure//closure:defs.bzl", "closure_repositories")
closure_repositories()

http_archive(
    name = "com_github_grpc_grpc_web",
    strip_prefix = "grpc-web-6da369d5837d2ae53d78a89ab259ba072d7ce372",
    sha256 = "aa1b09c007ce708d54fa6a0637d0e6eaef56c653b83656fffe55a3dbc166229b",
    urls = [
        "https://github.com/grpc/grpc-web/archive/6da369d5837d2ae53d78a89ab259ba072d7ce372.zip",
    ],
)


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
