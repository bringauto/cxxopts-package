#!/bin/bash

set -e

VERSION=v2.2.1
REPO_PATH=repo
BUILD_PATH="${REPO_PATH}/_build"

git clone git@github.com:jarro2783/cxxopts.git "${REPO_PATH}"

mkdir -p "${BUILD_PATH}"
pushd "${BUILD_PATH}"
	cmake -DCMAKE_BUILD_TYPE=Release \
		-DCXXOPTS_BUILD_EXAMPLES=OFF \
		-DCXXOPTS_BUILD_TESTS=OFF \
		-DCMAKE_INSTALL_PREFIX=INSTALL \
		../
	make
	make install
	pushd INSTALL
		zip -r libcxxopts-dev_${VERSION}_any.zip ./*
	popd
popd

mv ${BUILD_PATH}/INSTALL/*.zip ./
