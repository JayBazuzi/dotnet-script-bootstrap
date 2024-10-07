#! /bin/bash
set -euo pipefail

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

curl --fail --silent --location https://dot.net/v1/dotnet-install.sh | bash -s -- --jsonfile global.json --install-dir "${SCRIPT_DIR}/.dotnet" > /dev/null
export PATH="${SCRIPT_DIR}/.dotnet:${PATH}"

dotnet tool restore > /dev/null
dotnet tool install dotnet-script > /dev/null
dotnet script "$@"
