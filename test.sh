#!/usr/bin/env bash

dapp build

DAPP_TEST_TIMESTAMP=$(seth block latest timestamp)
DAPP_TEST_NUMBER=$(seth block latest number)
DAPP_TEST_ADDRESS=0x642AE78FAfBB8032Da552D619aD43F1D81E4DD7C

export DAPP_TEST_TIMESTAMP DAPP_TEST_NUMBER DAPP_TEST_ADDRESS

hevm dapp-test --verbose 1 --rpc="$ETH_RPC_URL" --json-file=out/dapp.sol.json
