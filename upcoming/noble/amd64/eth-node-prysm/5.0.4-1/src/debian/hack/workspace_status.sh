#!/bin/bash

# action_env through bazel does not work https://github.com/bazelbuild/bazel/issues/8578
# providing env variables also does not work
# patching each update is not feasible on each update, neither automatable

echo STABLE_GIT_COMMIT "3b184f43c86baf6c36478f65a5113e7cf0836d41"
echo DATE "2024-07-03 16:40:45+00:00"
echo DATE_UNIX "1720017645"
echo DOCKER_TAG "v5.0.4"
echo STABLE_GIT_TAG "v5.0.4"
