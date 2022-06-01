# bazel-rules-expected

## Bazel build rules for [expected](https://github.com/TartanLlama/expected.git)

Follows a "repos/deps" pattern (in order to help with recursive dependencies). To use:

1. Copy `bazel/repos.bzl` into your repository at `3rdparty/bazel-rules-expected/repos.bzl` and add an empty `BUILD` (or `BUILD.bazel`) to `3rdparty/bazel-rules-expected` as well.

2. Copy all of the directories from `3rdparty` that you ***don't*** already have in ***your*** repository's `3rdparty` directory.

3. Add the following to your `WORKSPACE` (or `WORKSPACE.bazel`):

```bazel
load("//3rdparty/bazel-rules-expected:repos.bzl", expected_repos="repos")
expected_repos()
load("@com_github_3rdparty_expected//bazel:deps.bzl", expected_deps="deps")
expected_deps()
```

Or ... to simplify others depending on ***your*** repository, add the following to your `repos.bzl`:

```bazel
load("//3rdparty/bazel-rules-expected:repos.bzl", expected_repos="repos")
def repos():
    expected_repos()
```

And the following to your `deps.bzl`:

```bazel
load("@com_github_3rdparty_expected//bazel:deps.bzl", expected_deps="deps")
def deps():
    expected_deps()
```

4. You can then use `@com_github_expected//:expected` in your target's `deps`.
