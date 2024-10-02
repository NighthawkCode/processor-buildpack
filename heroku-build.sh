#!/usr/bin/env bash

echo "Capturing SOURCE_VERSION during build phase."

if [ -z "$SOURCE_VERSION" ]; then
  echo "SOURCE_VERSION not found, setting commit hash to 'unknown'."
  commit_hash="unknown"
else
  commit_hash="$SOURCE_VERSION"
  echo "Commit hash from SOURCE_VERSION: $commit_hash"
fi

echo "$commit_hash" > COMMIT
echo "COMMIT file created with hash: $commit_hash"
