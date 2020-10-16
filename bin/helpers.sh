#!/usr/bin/env bash


get_platform_name() {
    if [[ "$(uname)" = "Linux" ]] ; then
        echo "linux"
    else
        echo "darwin"
    fi
}

get_architecture_name() {
    echo "amd64"
}

# curl https://github.com/prometheus/prometheus/releases/download/v2.22.0/prometheus-2.22.0.darwin-amd64.tar.gz
# wget -qO- https://github.com/prometheus/prometheus/releases/download/v2.22.0/prometheus-2.22.0.darwin-amd64.tar.gz | tar  xvz
get_directory_name() {
    plat="$(get_platform_name)"
    arch="$(get_architecture_name)"

    echo "prometheus-$1.${plat}-${arch}"
}

get_archive_name() {
    dir_name="$(get_directory_name "$1")"

    echo "${dir_name}.tar.gz"
}

