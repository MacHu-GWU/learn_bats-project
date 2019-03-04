#!/bin/bash


echo_hello () {
	echo "hello"
}


find_python_repo_paths() {
    local tmp_project_root_dir="$1"
    path_readme="${tmp_project_root_dir}"/README.rst
}
