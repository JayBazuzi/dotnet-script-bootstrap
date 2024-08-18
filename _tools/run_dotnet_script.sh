#! /bin/bash
set -euo pipefail

curl --fail --silent https://dot.net/v1/dotnet-install.sh | bash -s -- --jsonfile global.json
"$HOME/.dotnet/dotnet" tool install dotnet-script > /dev/null
"$HOME/.dotnet/dotnet" script "$@"
