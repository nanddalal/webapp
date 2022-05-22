load("@rules_python//python:defs.bzl", "py_binary", "py_library", "py_test")
load("@my_deps//:requirements.bzl", "requirement")

py_binary(
    name = "main",
    srcs = ["main.py"],
    deps = [
        ":sample_module",
    ],
)

py_library(
    name = "sample_module",
    srcs = ["sample_module.py"],
    deps = [
        requirement("numpy"),
    ],
)

py_test(
    name = "sample_module_test",
    srcs = ["sample_module_test.py"],
    deps = [
        ":sample_module",
    ],
)
