#!/bin/bash

function display_help() {
  readonly script_name="./$(basename "$0")"

  echo "This script updates versions and the 'releaseDate' in pom.yml during a release."
  echo "Use for standard final releases only, as it does not distinguish between 'latest' and 'latestFinal' versions."
  echo
  echo "Usage:"
  echo "  $script_name NEW_FINAL_VERSION NEW_SNAPSHOT_VERSION"
  echo "  $script_name --help"
}

if [[ $1 == "--help" ]]; then
  display_help
  exit 0
fi

if [[ $# -ne 2 ]]; then
  echo "Illegal number of arguments."
  display_help
  exit 1
fi

readonly new_release=$1
readonly new_snapshot=$2

readonly release_date=$(date +%Y-%m-%d)

sed -i -E "s/releaseDate: [0-9]+-[0-9]+-[0-9]+/releaseDate: $release_date/g" _config/pom.yml
sed -i -E "s/[0-9]+\.[0-9]+\.[0-9]+\.Final/$new_release/g" _config/pom.yml
sed -i -E "s/[0-9]+\.[0-9]+\.[0-9]+\-SNAPSHOT/$new_snapshot/g" _config/pom.yml