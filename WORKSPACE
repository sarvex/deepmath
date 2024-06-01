workspace(name = "deepmath")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_file")

local_repository(
  name = "org_tensorflow",
  path = "tensorflow",
)

local_repository(
  name = "org_fold",
  path = "fold",
)

# Borrowed from TensorFlow Serving.
# TODO(geoffreyi): Remove once TensorFlow handles this internally.
# TensorFlow depends on "io_bazel_rules_closure" so we need this here.
# Needs to be kept in sync with the same target in TensorFlow's WORKSPACE file.
http_archive(
    name = "io_bazel_rules_closure",
    sha256 = "1e61cf4a9ea6a76e99763ea3700c983fae59246377f81b79bc517a3f6934c0c2",
    strip_prefix = "rules_closure-26321bf918b16858f045d40e204482910e1dc649",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/rules_closure/archive/26321bf918b16858f045d40e204482910e1dc649.tar.gz",
        "https://github.com/bazelbuild/rules_closure/archive/26321bf918b16858f045d40e204482910e1dc649.tar.gz",  # 2018-12-21
    ],
)

load("@org_tensorflow//tensorflow:workspace.bzl", "tf_workspace")

tf_workspace(tf_repo_name = "org_tensorflow")

# Bazel version 0.4.3 produces obscure errors for TensorFlow's dependencies
load("@org_tensorflow//tensorflow:version_check.bzl", "check_bazel_version_at_least")

check_bazel_version_at_least("0.19.0")
