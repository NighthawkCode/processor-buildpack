#!/usr/bin/env bash

echo "Capturing SOURCE_VERSION during build phase."

if [ -z "$SOURCE_VERSION" ]; then
  echo "SOURCE_VERSION not found, setting commit hash to 'local'."
  commit_hash="local"
else
  commit_hash="${SOURCE_VERSION:0:7}"
  echo "Commit hash from SOURCE_VERSION: $commit_hash"
fi

echo "$commit_hash" > COMMIT
echo "COMMIT file created with hash: $commit_hash"
