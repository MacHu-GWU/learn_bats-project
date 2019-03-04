#!/usr/bin/env bats

load test_tool


@test "find git root dir" {
	run git rev-parse --show-toplevel
	[ "$status" -eq 0 ]
}


@test "echo_hello returns hello" {
    result=$(echo_hello)
    [ "$result" == "hello" ]
}


@test "find_python_repo_paths works" {
    test_find_python_repo_paths
}
