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

this_script_directory="${BASH_SOURCE%/*}"
if [[ ! -d "$this_script_directory" ]]; then
  this_script_directory="$PWD"
fi
readonly pom_yml_file="$this_script_directory/../optaplanner-website-root/data/pom.yml"

sed -i -E "s/releaseDate: [0-9]+-[0-9]+-[0-9]+/releaseDate: $release_date/g" "$pom_yml_file"
sed -i -E "s/[0-9]+\.[0-9]+\.[0-9]+\.(Final|Beta[0-9]*|CR[0-9]*)/$new_release/g" "$pom_yml_file"
sed -i -E "s/[0-9]+\.[0-9]+\.[0-9]+\-SNAPSHOT/$new_snapshot/g" "$pom_yml_file"

# Update antora-playbook.yml to point to the latest release branch of https://github.com/kiegroup/optaplanner.
if [[ "$new_release" == *Final* ]]; then
  readonly antora_playbook_yml_file="$this_script_directory/../optaplanner-website-docs/antora-playbook.yml"
  readonly version_array=(${new_release//./ })
  readonly release_branch="${version_array[0]}.${version_array[1]}.x"
  sed -i -E "s/branches: \[[0-9]+\.[0-9]+\.x\]/branches: [$release_branch]/" "$antora_playbook_yml_file"
fi