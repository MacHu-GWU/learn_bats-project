#!/bin/bash

source ./bin/tool.sh

test_find_python_repo_paths() {
    find_python_repo_paths "${HOME}"
    if ! [ "$path_readme" == "${HOME}/README.rst" ]; then
        return 1
    fi
}
