load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

# rules_python

http_archive(
    name = "rules_python",
    sha256 = "cdf6b84084aad8f10bf20b46b77cb48d83c319ebe6458a18e9d2cebf57807cdd",
    strip_prefix = "rules_python-0.8.1",
    url = "https://github.com/bazelbuild/rules_python/archive/refs/tags/0.8.1.tar.gz",
)

load("@rules_python//python:pip.bzl", "pip_parse")

# Create a central repo that knows about the dependencies needed from
# requirements_lock.txt.
pip_parse(
    name = "my_deps",
    requirements_lock = "//:requirements.txt",
)

# Load the starlark macro which will define your dependencies.
load("@my_deps//:requirements.bzl", "install_deps")

# Call it to define repos for your requirements.
install_deps()

# rules_proto

http_archive(
    name = "rules_proto",
    sha256 = "66bfdf8782796239d3875d37e7de19b1d94301e8972b3cbd2446b332429b4df1",
    strip_prefix = "rules_proto-4.0.0",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/rules_proto/archive/refs/tags/4.0.0.tar.gz",
        "https://github.com/bazelbuild/rules_proto/archive/refs/tags/4.0.0.tar.gz",
    ],
)

load("@rules_proto//proto:repositories.bzl", "rules_proto_dependencies", "rules_proto_toolchains")

rules_proto_dependencies()

rules_proto_toolchains()

# com_github_grpc_grpc

http_archive(
    name = "com_github_grpc_grpc",
    sha256 = "ec19657a677d49af59aa806ec299c070c882986c9fcc022b1c22c2a3caf01bcd",
    strip_prefix = "grpc-1.45.0",
    urls = ["https://github.com/grpc/grpc/archive/refs/tags/v1.45.0.tar.gz"],
)

load("@com_github_grpc_grpc//bazel:grpc_deps.bzl", "grpc_deps")

grpc_deps()

load("@com_github_grpc_grpc//bazel:grpc_extra_deps.bzl", "grpc_extra_deps")

grpc_extra_deps()
