load("//private/remote:java_archive.bzl", "java_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")
load("@bazel_tools//tools/jdk:remote_java_repository.bzl", "remote_java_repository")

def repositories():
    # Amazon Corretto (https://aws.amazon.com/corretto/)
    # Follow Corretto's maintenance schedule and support all LTS versions that are not end of life

    remote_java_repository(
        name = "corretto_jdk11_macos_amd64",
        target_compatible_with = [
            "@platforms//os:macos",
            "@platforms//cpu:x86_64",
        ],
        sha256 = "bbb6dbb917b8def5fa2c7e94a52c8b92020d6e38c5f55634296facff3168e4b4",
        strip_prefix = "amazon-corretto-11.jdk/Contents/Home",
        urls = ["https://corretto.aws/downloads/resources/11.0.20.9.1/amazon-corretto-11.0.20.9.1-macosx-x64.tar.gz"],
        version = "11",
    )

    remote_java_repository(
        name = "corretto_jdk11_macos_arm64",
        target_compatible_with = [
            "@platforms//os:macos",
            "@platforms//cpu:arm",
        ],
        sha256 = "32c81583c291153662b39e199129ec77303651593f531ca3839f78f7a37121c0",
        strip_prefix = "amazon-corretto-11.jdk/Contents/Home",
        urls = ["https://corretto.aws/downloads/resources/11.0.20.9.1/amazon-corretto-11.0.20.9.1-macosx-aarch64.tar.gz"],
        version = "11",
    )

    remote_java_repository(
        name = "corretto_jdk11_linux_amd64",
        target_compatible_with = [
            "@platforms//os:linux",
            "@platforms//cpu:x86_64",
        ],
        sha256 = "b6150255d304eab8fdcc0422beab277e5395bc481b4f87f096da78a979e47d47",
        strip_prefix = "amazon-corretto-11.0.20.9.1-linux-x64/",
        urls = ["https://corretto.aws/downloads/resources/11.0.20.9.1/amazon-corretto-11.0.20.9.1-linux-x64.tar.gz"],
        version = "11",
    )

    remote_java_repository(
        name = "corretto_jdk11_linux_arm64",
        target_compatible_with = [
            "@platforms//os:linux",
            "@platforms//cpu:arm",
        ],
        sha256 = "b6150255d304eab8fdcc0422beab277e5395bc481b4f87f096da78a979e47d47",
        strip_prefix = "amazon-corretto-11.0.20.9.1-linux-x64/",
        urls = ["https://corretto.aws/downloads/resources/11.0.20.9.1/amazon-corretto-11.0.20.9.1-linux-aarch64.tar.gz"],
        version = "11",
    )

    remote_java_repository(
        name = "corretto_jdk17_macos_amd64",
        target_compatible_with = [
            "@platforms//os:macos",
            "@platforms//cpu:x86_64",
        ],
        sha256 = "edb6d0406a8c16b44b7bd81b3d23d2a3de054c06ec8d86a25872093eee501ba0",
        strip_prefix = "amazon-corretto-17.jdk/Contents/Home",
        urls = ["https://corretto.aws/downloads/resources/17.0.8.8.1/amazon-corretto-17.0.8.8.1-macosx-x64.tar.gz"],
        version = "17",
    )

    remote_java_repository(
        name = "corretto_jdk17_macos_arm64",
        target_compatible_with = [
            "@platforms//os:macos",
            "@platforms//cpu:x86_64",
        ],
        sha256 = "08833433222ddb241a448eab92e0926d96287986f85dd5a6a065ae724e1bce43",
        strip_prefix = "amazon-corretto-17.jdk/Contents/Home",
        urls = ["https://corretto.aws/downloads/resources/17.0.8.8.1/amazon-corretto-17.0.8.8.1-macosx-aarch64.tar.gz"],
        version = "17",
    )

    remote_java_repository(
        name = "corretto_jdk17_linux_amd64",
        target_compatible_with = [
            "@platforms//os:linux",
            "@platforms//cpu:x86_64",
        ],
        sha256 = "dd0e9596a6661c85656bbb6c2c726b768ce50af7cd37209d56b681d0838c3393",
        strip_prefix = "amazon-corretto-17.0.8.8.1-linux-x64",
        urls = ["https://corretto.aws/downloads/resources/17.0.8.8.1/amazon-corretto-17.0.8.8.1-linux-x64.tar.gz"],
        version = "17",
    )

    remote_java_repository(
        name = "corretto_jdk17_linux_arm64",
        target_compatible_with = [
            "@platforms//os:linux",
            "@platforms//cpu:x86_64",
        ],
        sha256 = "27181aa282fa1ebf828a5ea284a88cd5d23206022233d40168d872681b4575d3",
        strip_prefix = "amazon-corretto-17.0.8.8.1-linux-aarch64",
        urls = ["https://corretto.aws/downloads/resources/17.0.8.8.1/amazon-corretto-17.0.8.8.1-linux-aarch64.tar.gz"],
        version = "17",
    )

    remote_java_repository(
        name = "corretto_jdk20_macos_amd64",
        target_compatible_with = [
            "@platforms//os:macos",
            "@platforms//cpu:x86_64",
        ],
        sha256 = "d394f4364488501bf63444e9e31c55d7b4890409cf00e3d6b0fe0fcfb0ea9a4e",
        strip_prefix = "amazon-corretto-20.jdk/Contents/Home",
        urls = ["https://corretto.aws/downloads/resources/20.0.2.10.1/amazon-corretto-20.0.2.10.1-macosx-x64.tar.gz"],
        version = "20",
    )

    remote_java_repository(
        name = "corretto_jdk20_macos_arm64",
        target_compatible_with = [
            "@platforms//os:macos",
            "@platforms//cpu:arm",
        ],
        sha256 = "30e6d956f3d674e09e7d211e47d2880a17e70ad62460aaa0b6628ed091611c3c",
        strip_prefix = "amazon-corretto-20.jdk/Contents/Home",
        urls = ["https://corretto.aws/downloads/resources/20.0.2.10.1/amazon-corretto-20.0.2.10.1-macosx-aarch64.tar.gz"],
        version = "20",
    )

    remote_java_repository(
        name = "corretto_jdk20_linux_amd64",
        target_compatible_with = [
            "@platforms//os:linux",
            "@platforms//cpu:x86_64",
        ],
        sha256 = "3b60fe04966d0aa762bf1fc2974ad239cf7ab887a657a9e7e3c75a9310e34db2",
        strip_prefix = "amazon-corretto-20.0.2.10.1-linux-x64",
        urls = ["https://corretto.aws/downloads/resources/20.0.2.10.1/amazon-corretto-20.0.2.10.1-linux-x64.tar.gz"],
        version = "20",
    )

    remote_java_repository(
        name = "corretto_jdk20_linux_arm64",
        target_compatible_with = [
            "@platforms//os:linux",
            "@platforms//cpu:arm",
        ],
        sha256 = "4622de17e4afcb98e05f21a8be81d98500bbfc4a15c0c5a5420b39b816ba4f13",
        strip_prefix = "amazon-corretto-20.0.2.10.1-linux-aarch64",
        urls = ["https://corretto.aws/downloads/resources/20.0.2.10.1/amazon-corretto-20.0.2.10.1-linux-aarch64.tar.gz"],
        version = "20",
    )

    remote_java_repository(
        name = "corretto_jdk21_macos_amd64",
        target_compatible_with = [
            "@platforms//os:macos",
            "@platforms//cpu:x86_64",
        ],
        sha256 = "99dfd59df4e6c9ebb9ec64348283a285c62ea2debc0e99bcdfee55c7c3ff2f0e",
        strip_prefix = "amazon-corretto-21.jdk/Contents/Home",
        urls = ["https://corretto.aws/downloads/resources/21.0.0.35.1/amazon-corretto-21.0.0.35.1-macosx-x64.tar.gz"],
        version = "21",
    )

    remote_java_repository(
        name = "corretto_jdk21_macos_arm64",
        target_compatible_with = [
            "@platforms//os:macos",
            "@platforms//cpu:arm",
        ],
        sha256 = "b4161b887ebbf68d6400608d2fccedb599bf18fd79e3e9c9dbfc0e27e1ed4ce1",
        strip_prefix = "amazon-corretto-21.jdk/Contents/Home",
        urls = ["https://corretto.aws/downloads/resources/21.0.0.35.1/amazon-corretto-21.0.0.35.1-macosx-aarch64.tar.gz"],
        version = "21",
    )

    remote_java_repository(
        name = "corretto_jdk21_linux_amd64",
        target_compatible_with = [
            "@platforms//os:linux",
            "@platforms//cpu:x86_64",
        ],
        sha256 = "1b7ae2cabb15b69867511a08e0091bd2e2df67064ff444bbe883900819801e4b",
        strip_prefix = "amazon-corretto-21.0.0.35.1-linux-x64",
        urls = ["https://corretto.aws/downloads/resources/21.0.0.35.1/amazon-corretto-21.0.0.35.1-linux-x64.tar.gz"],
        version = "21",
    )

    remote_java_repository(
        name = "corretto_jdk21_linux_arm64",
        target_compatible_with = [
            "@platforms//os:linux",
            "@platforms//cpu:arm",
        ],
        sha256 = "167696d2622e2a7eeccf1555b4e8e5f91cd3c88d309432ef56d86af07e46c5af",
        strip_prefix = "amazon-corretto-21.0.0.35.1-linux-aarch64",
        urls = ["https://corretto.aws/downloads/resources/21.0.0.35.1/amazon-corretto-21.0.0.35.1-linux-aarch64.tar.gz"],
        version = "21",
    )

    java_archive(
        name = "java11_amd64",
        sha256 = "b6150255d304eab8fdcc0422beab277e5395bc481b4f87f096da78a979e47d47",
        # strip_prefix = "amazon-corretto-11.0.20.9.1-linux-x64/",
        urls = ["https://corretto.aws/downloads/resources/11.0.20.9.1/amazon-corretto-11.0.20.9.1-linux-x64.tar.gz"],
        version = "11.0.20.9.1",
        architecture = "amd64",
        control = "//java:control",
        source_jdk = "@corretto_jdk11_macos_amd64//:WORKSPACE",
        target_jdk = "@corretto_jdk11_linux_amd64//:WORKSPACE",
    )

    java_archive(
        name = "java11_arm64",
        sha256 = "17c33bd5fb51fd8b4b5cdfce9d656f31698a6c6ccf018f4f2bf99d714948c736",
        # strip_prefix = "amazon-corretto-11.0.20.9.1-linux-aarch64/",
        urls = ["https://corretto.aws/downloads/resources/11.0.20.9.1/amazon-corretto-11.0.20.9.1-linux-aarch64.tar.gz"],
        version = "11.0.20.9.1",
        architecture = "arm64",
        control = "//java:control",
        source_jdk = "@corretto_jdk11_macos_amd64//:WORKSPACE",
        target_jdk = "@corretto_jdk11_linux_arm64//:WORKSPACE",
    )

    java_archive(
        name = "java17_amd64",
        sha256 = "dd0e9596a6661c85656bbb6c2c726b768ce50af7cd37209d56b681d0838c3393",
        # strip_prefix = "amazon-corretto-17.0.8.8.1-linux-x64/",
        urls = ["https://corretto.aws/downloads/resources/17.0.8.8.1/amazon-corretto-17.0.8.8.1-linux-x64.tar.gz"],
        version = "17.0.8.8.1",
        architecture = "amd64",
        control = "//java:control",
        source_jdk = "@corretto_jdk17_macos_amd64//:WORKSPACE",
        target_jdk = "@corretto_jdk17_linux_amd64//:WORKSPACE",
    )

    java_archive(
        name = "java17_arm64",
        sha256 = "27181aa282fa1ebf828a5ea284a88cd5d23206022233d40168d872681b4575d3",
        # strip_prefix = "amazon-corretto-17.0.8.8.1-linux-aarch64/",
        urls = ["https://corretto.aws/downloads/resources/17.0.8.8.1/amazon-corretto-17.0.8.8.1-linux-aarch64.tar.gz"],
        version = "17.0.8.8.1",
        architecture = "arm64",
        control = "//java:control",
        source_jdk = "@corretto_jdk17_macos_amd64//:WORKSPACE",
        target_jdk = "@corretto_jdk17_linux_arm64//:WORKSPACE",
    )

    java_archive(
        name = "java20_amd64",
        sha256 = "3b60fe04966d0aa762bf1fc2974ad239cf7ab887a657a9e7e3c75a9310e34db2",
        # strip_prefix = "amazon-corretto-20.0.2.10.1-linux-x64/",
        urls = ["https://corretto.aws/downloads/resources/20.0.2.10.1/amazon-corretto-20.0.2.10.1-linux-x64.tar.gz"],
        version = "20.0.2.10.1",
        architecture = "amd64",
        control = "//java:control",
        source_jdk = "@corretto_jdk20_macos_amd64//:WORKSPACE",
        target_jdk = "@corretto_jdk20_linux_amd64//:WORKSPACE",
    )

    java_archive(
        name = "java20_arm64",
        sha256 = "4622de17e4afcb98e05f21a8be81d98500bbfc4a15c0c5a5420b39b816ba4f13",
        # strip_prefix = "amazon-corretto-20.0.2.10.1-linux-aarch64/",
        urls = ["https://corretto.aws/downloads/resources/20.0.2.10.1/amazon-corretto-20.0.2.10.1-linux-aarch64.tar.gz"],
        version = "20.0.2.10.1",
        architecture = "arm64",
        control = "//java:control",
        source_jdk = "@corretto_jdk20_macos_amd64//:WORKSPACE",
        target_jdk = "@corretto_jdk20_linux_arm64//:WORKSPACE",
    )

    java_archive(
        name = "java21_amd64",
        sha256 = "1b7ae2cabb15b69867511a08e0091bd2e2df67064ff444bbe883900819801e4b",
        # strip_prefix = "amazon-corretto-21.0.0.35.1-linux-x64/",
        urls = ["https://corretto.aws/downloads/resources/21.0.0.35.1/amazon-corretto-21.0.0.35.1-linux-x64.tar.gz"],
        version = "21.0.0.35.1",
        architecture = "amd64",
        control = "//java:control",
        source_jdk = "@corretto_jdk21_macos_amd64//:WORKSPACE",
        target_jdk = "@corretto_jdk21_linux_arm64//:WORKSPACE",
    )

    java_archive(
        name = "java21_arm64",
        sha256 = "167696d2622e2a7eeccf1555b4e8e5f91cd3c88d309432ef56d86af07e46c5af",
        # strip_prefix = "amazon-corretto-21.0.0.35.1-linux-aarch64/",
        urls = ["https://corretto.aws/downloads/resources/21.0.0.35.1/amazon-corretto-21.0.0.35.1-linux-aarch64.tar.gz"],
        version = "21.0.0.35.1",
        architecture = "arm64",
        control = "//java:control",
        source_jdk = "@corretto_jdk21_macos_amd64//:WORKSPACE",
        target_jdk = "@corretto_jdk21_linux_arm64//:WORKSPACE",
    )
