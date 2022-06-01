"""Dependency specific initialization."""

load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def deps(repo_mapping = {}):
    maybe(
        git_repository,
        name = "com_github_expected",
        remote = "https://github.com/TartanLlama/expected.git",
        commit = "96d547c03d2feab8db64c53c3744a9b4a7c8f2c5",
        shallow_since = "1631006596 +0100",
        repo_mapping = repo_mapping,
    )
