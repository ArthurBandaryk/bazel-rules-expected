"""Dependency specific initialization."""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def deps(repo_mapping = {}):
    maybe(
        http_archive,
        name = "com_github_expected",
        url = "https://github.com/TartanLlama/expected/archive/refs/tags/v1.0.0.tar.gz",
        sha256 = "8f5124085a124113e75e3890b4e923e3a4de5b26a973b891b3deb40e19c03cee",
        strip_prefix = "expected-1.0.0",
        repo_mapping = repo_mapping,
        build_file = "@com_github_3rdparty_expected//:BUILD.bazel",
    )
