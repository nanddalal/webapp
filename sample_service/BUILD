# gRPC Bazel BUILD file.
#
# Copyright 2019 The gRPC authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

load("@rules_python//python:defs.bzl", "py_binary", "py_library", "py_test")
load("@rules_proto//proto:defs.bzl", "proto_library")
load("@com_github_grpc_grpc//bazel:python_rules.bzl", "py_grpc_library", "py_proto_library")
load("@my_deps//:requirements.bzl", "requirement")

proto_library(
    name = "prime_proto",
    srcs = ["prime.proto"],
)

py_proto_library(
    name = "prime_proto_pb2",
    deps = [":prime_proto"],
)

py_grpc_library(
    name = "prime_proto_pb2_grpc",
    srcs = [":prime_proto"],
    deps = [":prime_proto_pb2"],
)

py_binary(
    name = "client",
    srcs = ["client.py"],
    deps = [
        ":prime_proto_pb2",
        ":prime_proto_pb2_grpc",
        requirement("grpcio-tools"),
    ],
)

py_binary(
    name = "server",
    srcs = ["server.py"],
    deps = [
        requirement("grpcio-tools"),
        ":prime_proto_pb2",
        ":prime_proto_pb2_grpc",
    ],
)

py_test(
    name = "test/_multiprocessing_example_test",
    srcs = ["test/_multiprocessing_example_test.py"],
    data = [
        ":client",
        ":server",
    ],
)
