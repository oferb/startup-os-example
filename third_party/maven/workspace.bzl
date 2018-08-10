# Do not edit. bazel-deps autogenerates this file from dependencies.yaml.

def declare_maven(hash):
    native.maven_jar(
        name = hash["name"],
        artifact = hash["artifact"],
        sha1 = hash["sha1"],
        repository = hash["repository"]
    )
    native.bind(
        name = hash["bind"],
        actual = hash["actual"]
    )

def list_dependencies():
    return [
    {"artifact": "com.google.api.grpc:proto-google-common-protos:1.0.0", "lang": "java", "sha1": "86f070507e28b930e50d218ee5b6788ef0dd05e6", "repository": "https://repo.maven.apache.org/maven2/", "name": "mvncom_google_api_grpc_proto_google_common_protos", "actual": "@mvncom_google_api_grpc_proto_google_common_protos//jar", "bind": "jar/mvncom/google/api/grpc/proto_google_common_protos"},
# duplicates in com.google.code.findbugs:jsr305 fixed to 3.0.2
# - com.google.flogger:flogger-system-backend:0.1 wanted version 3.0.1
# - com.google.flogger:flogger:0.1 wanted version 3.0.1
# - com.google.guava:guava:25.1-jre wanted version 3.0.2
# - com.google.instrumentation:instrumentation-api:0.4.3 wanted version 3.0.0
# - io.grpc:grpc-core:1.12.0 wanted version 3.0.0
    {"artifact": "com.google.code.findbugs:jsr305:3.0.2", "lang": "java", "sha1": "25ea2e8b0c338a877313bd4672d3fe056ea78f0d", "repository": "https://repo.maven.apache.org/maven2/", "name": "mvncom_google_code_findbugs_jsr305", "actual": "@mvncom_google_code_findbugs_jsr305//jar", "bind": "jar/mvncom/google/code/findbugs/jsr305"},
    {"artifact": "com.google.code.gson:gson:2.7", "lang": "java", "sha1": "751f548c85fa49f330cecbb1875893f971b33c4e", "repository": "https://repo.maven.apache.org/maven2/", "name": "mvncom_google_code_gson_gson", "actual": "@mvncom_google_code_gson_gson//jar", "bind": "jar/mvncom/google/code/gson/gson"},
    {"artifact": "com.google.dagger:dagger-compiler:2.15", "lang": "java", "sha1": "c114d70b9a4e814132fc147e8b79b1a294e5c2db", "repository": "https://repo.maven.apache.org/maven2/", "name": "mvncom_google_dagger_dagger_compiler", "actual": "@mvncom_google_dagger_dagger_compiler//jar", "bind": "jar/mvncom/google/dagger/dagger_compiler"},
    {"artifact": "com.google.dagger:dagger-producers:2.15", "lang": "java", "sha1": "cb9261e680cf2e0a9e1f0693f92b671781cb9f96", "repository": "https://repo.maven.apache.org/maven2/", "name": "mvncom_google_dagger_dagger_producers", "actual": "@mvncom_google_dagger_dagger_producers//jar", "bind": "jar/mvncom/google/dagger/dagger_producers"},
    {"artifact": "com.google.dagger:dagger-spi:2.15", "lang": "java", "sha1": "b2a7a008233795b6a279c901485b0269549972d6", "repository": "https://repo.maven.apache.org/maven2/", "name": "mvncom_google_dagger_dagger_spi", "actual": "@mvncom_google_dagger_dagger_spi//jar", "bind": "jar/mvncom/google/dagger/dagger_spi"},
    {"artifact": "com.google.dagger:dagger:2.15", "lang": "java", "sha1": "13cc1f509deda05c1fe5a315519d7cb743b8333b", "repository": "https://repo.maven.apache.org/maven2/", "name": "mvncom_google_dagger_dagger", "actual": "@mvncom_google_dagger_dagger//jar", "bind": "jar/mvncom/google/dagger/dagger"},
# duplicates in com.google.errorprone:error_prone_annotations promoted to 2.1.3
# - com.google.guava:guava:25.1-jre wanted version 2.1.3
# - io.grpc:grpc-core:1.12.0 wanted version 2.1.2
    {"artifact": "com.google.errorprone:error_prone_annotations:2.1.3", "lang": "java", "sha1": "39b109f2cd352b2d71b52a3b5a1a9850e1dc304b", "repository": "https://repo.maven.apache.org/maven2/", "name": "mvncom_google_errorprone_error_prone_annotations", "actual": "@mvncom_google_errorprone_error_prone_annotations//jar", "bind": "jar/mvncom/google/errorprone/error_prone_annotations"},
    {"artifact": "com.google.errorprone:javac-shaded:9-dev-r4023-3", "lang": "java", "sha1": "72b688efd290280a0afde5f9892b0fde6f362d1d", "repository": "https://repo.maven.apache.org/maven2/", "name": "mvncom_google_errorprone_javac_shaded", "actual": "@mvncom_google_errorprone_javac_shaded//jar", "bind": "jar/mvncom/google/errorprone/javac_shaded"},
    {"artifact": "com.google.flogger:flogger-system-backend:0.1", "lang": "java", "sha1": "051278e0c81e2eaf5e275e4275a8fb9ca5967695", "repository": "https://repo.maven.apache.org/maven2/", "name": "mvncom_google_flogger_flogger_system_backend", "actual": "@mvncom_google_flogger_flogger_system_backend//jar", "bind": "jar/mvncom/google/flogger/flogger_system_backend"},
    {"artifact": "com.google.flogger:flogger:0.1", "lang": "java", "sha1": "e02b7e9c66921e31b506416ef690c72774e1ed65", "repository": "https://repo.maven.apache.org/maven2/", "name": "mvncom_google_flogger_flogger", "actual": "@mvncom_google_flogger_flogger//jar", "bind": "jar/mvncom/google/flogger/flogger"},
    {"artifact": "com.google.googlejavaformat:google-java-format:1.5", "lang": "java", "sha1": "fba7f130d29061d2d2ea384b4880c10cae92ef73", "repository": "https://repo.maven.apache.org/maven2/", "name": "mvncom_google_googlejavaformat_google_java_format", "actual": "@mvncom_google_googlejavaformat_google_java_format//jar", "bind": "jar/mvncom/google/googlejavaformat/google_java_format"},
# duplicates in com.google.guava:guava fixed to 25.1-jre
# - com.google.dagger:dagger-compiler:2.15 wanted version 23.3-jre
# - com.google.googlejavaformat:google-java-format:1.5 wanted version 22.0
# - com.google.protobuf:protobuf-java-util:3.6.0 wanted version 19.0
# - io.grpc:grpc-core:1.12.0 wanted version 20.0
# - io.grpc:grpc-protobuf:1.12.0 wanted version 20.0
    {"artifact": "com.google.guava:guava:25.1-jre", "lang": "java", "sha1": "6c57e4b22b44e89e548b5c9f70f0c45fe10fb0b4", "repository": "https://repo.maven.apache.org/maven2/", "name": "mvncom_google_guava_guava", "actual": "@mvncom_google_guava_guava//jar", "bind": "jar/mvncom/google/guava/guava"},
    {"artifact": "com.google.instrumentation:instrumentation-api:0.4.3", "lang": "java", "sha1": "41614af3429573dc02645d541638929d877945a2", "repository": "https://repo.maven.apache.org/maven2/", "name": "mvncom_google_instrumentation_instrumentation_api", "actual": "@mvncom_google_instrumentation_instrumentation_api//jar", "bind": "jar/mvncom/google/instrumentation/instrumentation_api"},
    {"artifact": "com.google.j2objc:j2objc-annotations:1.1", "lang": "java", "sha1": "ed28ded51a8b1c6b112568def5f4b455e6809019", "repository": "https://repo.maven.apache.org/maven2/", "name": "mvncom_google_j2objc_j2objc_annotations", "actual": "@mvncom_google_j2objc_j2objc_annotations//jar", "bind": "jar/mvncom/google/j2objc/j2objc_annotations"},
    {"artifact": "com.google.protobuf:protobuf-java-util:3.6.0", "lang": "java", "sha1": "3680d0042d4fe0b95ada844ff24da0698a7f0773", "repository": "https://repo.maven.apache.org/maven2/", "name": "mvncom_google_protobuf_protobuf_java_util", "actual": "@mvncom_google_protobuf_protobuf_java_util//jar", "bind": "jar/mvncom/google/protobuf/protobuf_java_util"},
# duplicates in com.google.protobuf:protobuf-java fixed to 3.6.0
# - com.google.protobuf:protobuf-java-util:3.6.0 wanted version 3.6.0
# - io.grpc:grpc-protobuf:1.12.0 wanted version 3.5.1
    {"artifact": "com.google.protobuf:protobuf-java:3.6.0", "lang": "java", "sha1": "5333f7e422744d76840c08a106e28e519fbe3acd", "repository": "https://repo.maven.apache.org/maven2/", "name": "mvncom_google_protobuf_protobuf_java", "actual": "@mvncom_google_protobuf_protobuf_java//jar", "bind": "jar/mvncom/google/protobuf/protobuf_java"},
    {"artifact": "com.squareup:javapoet:1.8.0", "lang": "java", "sha1": "e858dc62ef484048540d27d36f3ec2177a3fa9b1", "repository": "https://repo.maven.apache.org/maven2/", "name": "mvncom_squareup_javapoet", "actual": "@mvncom_squareup_javapoet//jar", "bind": "jar/mvncom/squareup/javapoet"},
    {"artifact": "io.grpc:grpc-context:1.12.0", "lang": "java", "sha1": "5b63a170b786051a42cce08118d5ea3c8f60f749", "repository": "https://repo.maven.apache.org/maven2/", "name": "mvnio_grpc_grpc_context", "actual": "@mvnio_grpc_grpc_context//jar", "bind": "jar/mvnio/grpc/grpc_context"},
    {"artifact": "io.grpc:grpc-core:1.12.0", "lang": "java", "sha1": "541a5c68ce85c03190e29bc9e0ec611d2b75ff24", "repository": "https://repo.maven.apache.org/maven2/", "name": "mvnio_grpc_grpc_core", "actual": "@mvnio_grpc_grpc_core//jar", "bind": "jar/mvnio/grpc/grpc_core"},
    {"artifact": "io.grpc:grpc-netty:1.12.0", "lang": "java", "sha1": "a4dfc839dae9206c0d1f8b53657c2a8e4a81ad41", "repository": "https://repo.maven.apache.org/maven2/", "name": "mvnio_grpc_grpc_netty", "actual": "@mvnio_grpc_grpc_netty//jar", "bind": "jar/mvnio/grpc/grpc_netty"},
    {"artifact": "io.grpc:grpc-protobuf-lite:1.12.0", "lang": "java", "sha1": "f5bebfbd5e93b8bbb58888a5cfaa9f490fb7b455", "repository": "https://repo.maven.apache.org/maven2/", "name": "mvnio_grpc_grpc_protobuf_lite", "actual": "@mvnio_grpc_grpc_protobuf_lite//jar", "bind": "jar/mvnio/grpc/grpc_protobuf_lite"},
    {"artifact": "io.grpc:grpc-protobuf:1.12.0", "lang": "java", "sha1": "fbee015b681b5342e72fe40f88eae9dd6cbce206", "repository": "https://repo.maven.apache.org/maven2/", "name": "mvnio_grpc_grpc_protobuf", "actual": "@mvnio_grpc_grpc_protobuf//jar", "bind": "jar/mvnio/grpc/grpc_protobuf"},
    {"artifact": "io.grpc:grpc-services:1.12.0", "lang": "java", "sha1": "6af24bde0df8bbaf89fcaef33bf9ebba76c11b83", "repository": "https://repo.maven.apache.org/maven2/", "name": "mvnio_grpc_grpc_services", "actual": "@mvnio_grpc_grpc_services//jar", "bind": "jar/mvnio/grpc/grpc_services"},
    {"artifact": "io.grpc:grpc-stub:1.12.0", "lang": "java", "sha1": "fbd2bafe09a89442ab3d7a8d8b3e8bafbd59b4e0", "repository": "https://repo.maven.apache.org/maven2/", "name": "mvnio_grpc_grpc_stub", "actual": "@mvnio_grpc_grpc_stub//jar", "bind": "jar/mvnio/grpc/grpc_stub"},
    {"artifact": "io.netty:netty-buffer:4.1.22.Final", "lang": "java", "sha1": "15e964a2095031364f534a6e21977f5ee9ca32a9", "repository": "https://repo.maven.apache.org/maven2/", "name": "mvnio_netty_netty_buffer", "actual": "@mvnio_netty_netty_buffer//jar", "bind": "jar/mvnio/netty/netty_buffer"},
    {"artifact": "io.netty:netty-codec-http2:4.1.22.Final", "lang": "java", "sha1": "6d01daf652551a3219cc07122b765d4c4924dcf8", "repository": "https://repo.maven.apache.org/maven2/", "name": "mvnio_netty_netty_codec_http2", "actual": "@mvnio_netty_netty_codec_http2//jar", "bind": "jar/mvnio/netty/netty_codec_http2"},
    {"artifact": "io.netty:netty-codec-http:4.1.22.Final", "lang": "java", "sha1": "3805f3ca0d57630200defc7f9bb6ed3382dcb10b", "repository": "https://repo.maven.apache.org/maven2/", "name": "mvnio_netty_netty_codec_http", "actual": "@mvnio_netty_netty_codec_http//jar", "bind": "jar/mvnio/netty/netty_codec_http"},
    {"artifact": "io.netty:netty-codec-socks:4.1.22.Final", "lang": "java", "sha1": "d077b39da2dedc5dc5db50a44e5f4c30353e86f3", "repository": "https://repo.maven.apache.org/maven2/", "name": "mvnio_netty_netty_codec_socks", "actual": "@mvnio_netty_netty_codec_socks//jar", "bind": "jar/mvnio/netty/netty_codec_socks"},
    {"artifact": "io.netty:netty-codec:4.1.22.Final", "lang": "java", "sha1": "239c0af275952e70bb4adf7cf8c03d88ddc394c9", "repository": "https://repo.maven.apache.org/maven2/", "name": "mvnio_netty_netty_codec", "actual": "@mvnio_netty_netty_codec//jar", "bind": "jar/mvnio/netty/netty_codec"},
    {"artifact": "io.netty:netty-common:4.1.22.Final", "lang": "java", "sha1": "56ff4deca53fc791ed59ac2b72eb6718714a4de9", "repository": "https://repo.maven.apache.org/maven2/", "name": "mvnio_netty_netty_common", "actual": "@mvnio_netty_netty_common//jar", "bind": "jar/mvnio/netty/netty_common"},
    {"artifact": "io.netty:netty-handler-proxy:4.1.22.Final", "lang": "java", "sha1": "8eabe24f0b8e95d0873964666ad070179ca81e72", "repository": "https://repo.maven.apache.org/maven2/", "name": "mvnio_netty_netty_handler_proxy", "actual": "@mvnio_netty_netty_handler_proxy//jar", "bind": "jar/mvnio/netty/netty_handler_proxy"},
    {"artifact": "io.netty:netty-handler:4.1.22.Final", "lang": "java", "sha1": "a3a16b17d5a5ed6f784b0daba95e28d940356109", "repository": "https://repo.maven.apache.org/maven2/", "name": "mvnio_netty_netty_handler", "actual": "@mvnio_netty_netty_handler//jar", "bind": "jar/mvnio/netty/netty_handler"},
    {"artifact": "io.netty:netty-resolver:4.1.22.Final", "lang": "java", "sha1": "b5484d17a97cb57b07d2a1ac092c249e47234c17", "repository": "https://repo.maven.apache.org/maven2/", "name": "mvnio_netty_netty_resolver", "actual": "@mvnio_netty_netty_resolver//jar", "bind": "jar/mvnio/netty/netty_resolver"},
    {"artifact": "io.netty:netty-transport:4.1.22.Final", "lang": "java", "sha1": "3bd455cd9e5e5fb2e08fd9cd0acfa54c079ca989", "repository": "https://repo.maven.apache.org/maven2/", "name": "mvnio_netty_netty_transport", "actual": "@mvnio_netty_netty_transport//jar", "bind": "jar/mvnio/netty/netty_transport"},
    {"artifact": "io.opencensus:opencensus-api:0.11.0", "lang": "java", "sha1": "c1ff1f0d737a689d900a3e2113ddc29847188c64", "repository": "https://repo.maven.apache.org/maven2/", "name": "mvnio_opencensus_opencensus_api", "actual": "@mvnio_opencensus_opencensus_api//jar", "bind": "jar/mvnio/opencensus/opencensus_api"},
    {"artifact": "io.opencensus:opencensus-contrib-grpc-metrics:0.11.0", "lang": "java", "sha1": "d57b877f1a28a613452d45e35c7faae5af585258", "repository": "https://repo.maven.apache.org/maven2/", "name": "mvnio_opencensus_opencensus_contrib_grpc_metrics", "actual": "@mvnio_opencensus_opencensus_contrib_grpc_metrics//jar", "bind": "jar/mvnio/opencensus/opencensus_contrib_grpc_metrics"},
    {"artifact": "javax.annotation:javax.annotation-api:1.3.2", "lang": "java", "sha1": "934c04d3cfef185a8008e7bf34331b79730a9d43", "repository": "https://repo.maven.apache.org/maven2/", "name": "mvnjavax_annotation_javax_annotation_api", "actual": "@mvnjavax_annotation_javax_annotation_api//jar", "bind": "jar/mvnjavax/annotation/javax_annotation_api"},
    {"artifact": "javax.annotation:jsr250-api:1.0", "lang": "java", "sha1": "5025422767732a1ab45d93abfea846513d742dcf", "repository": "https://repo.maven.apache.org/maven2/", "name": "mvnjavax_annotation_jsr250_api", "actual": "@mvnjavax_annotation_jsr250_api//jar", "bind": "jar/mvnjavax/annotation/jsr250_api"},
    {"artifact": "javax.inject:javax.inject:1", "lang": "java", "sha1": "6975da39a7040257bd51d21a231b76c915872d38", "repository": "https://repo.maven.apache.org/maven2/", "name": "mvnjavax_inject_javax_inject", "actual": "@mvnjavax_inject_javax_inject//jar", "bind": "jar/mvnjavax/inject/javax_inject"},
    {"artifact": "junit:junit:4.12", "lang": "java", "sha1": "2973d150c0dc1fefe998f834810d68f278ea58ec", "repository": "https://repo.maven.apache.org/maven2/", "name": "mvnjunit_junit", "actual": "@mvnjunit_junit//jar", "bind": "jar/mvnjunit/junit"},
    {"artifact": "org.checkerframework:checker-compat-qual:2.3.0", "lang": "java", "sha1": "69cb4fea55a9d89b8827d107f17c985cc1a76052", "repository": "https://repo.maven.apache.org/maven2/", "name": "mvnorg_checkerframework_checker_compat_qual", "actual": "@mvnorg_checkerframework_checker_compat_qual//jar", "bind": "jar/mvnorg/checkerframework/checker_compat_qual"},
    {"artifact": "org.checkerframework:checker-qual:2.0.0", "lang": "java", "sha1": "518929596ee3249127502a8573b2e008e2d51ed3", "repository": "https://repo.maven.apache.org/maven2/", "name": "mvnorg_checkerframework_checker_qual", "actual": "@mvnorg_checkerframework_checker_qual//jar", "bind": "jar/mvnorg/checkerframework/checker_qual"},
    {"artifact": "org.codehaus.mojo:animal-sniffer-annotations:1.14", "lang": "java", "sha1": "775b7e22fb10026eed3f86e8dc556dfafe35f2d5", "repository": "https://repo.maven.apache.org/maven2/", "name": "mvnorg_codehaus_mojo_animal_sniffer_annotations", "actual": "@mvnorg_codehaus_mojo_animal_sniffer_annotations//jar", "bind": "jar/mvnorg/codehaus/mojo/animal_sniffer_annotations"},
    {"artifact": "org.hamcrest:hamcrest-core:1.3", "lang": "java", "sha1": "42a25dc3219429f0e5d060061f71acb49bf010a0", "repository": "https://repo.maven.apache.org/maven2/", "name": "mvnorg_hamcrest_hamcrest_core", "actual": "@mvnorg_hamcrest_hamcrest_core//jar", "bind": "jar/mvnorg/hamcrest/hamcrest_core"},
    {"artifact": "org.javassist:javassist:3.22.0-GA", "lang": "java", "sha1": "3e83394258ae2089be7219b971ec21a8288528ad", "repository": "https://repo.maven.apache.org/maven2/", "name": "mvnorg_javassist_javassist", "actual": "@mvnorg_javassist_javassist//jar", "bind": "jar/mvnorg/javassist/javassist"},
    {"artifact": "org.slf4j:slf4j-api:1.7.25", "lang": "java", "sha1": "da76ca59f6a57ee3102f8f9bd9cee742973efa8a", "repository": "https://repo.maven.apache.org/maven2/", "name": "mvnorg_slf4j_slf4j_api", "actual": "@mvnorg_slf4j_slf4j_api//jar", "bind": "jar/mvnorg/slf4j/slf4j_api"},
    {"artifact": "org.slf4j:slf4j-simple:1.7.25", "lang": "java", "sha1": "8dacf9514f0c707cbbcdd6fd699e8940d42fb54e", "repository": "https://repo.maven.apache.org/maven2/", "name": "mvnorg_slf4j_slf4j_simple", "actual": "@mvnorg_slf4j_slf4j_simple//jar", "bind": "jar/mvnorg/slf4j/slf4j_simple"},
    ]

def maven_dependencies(callback = declare_maven):
    for hash in list_dependencies():
        callback(hash)
