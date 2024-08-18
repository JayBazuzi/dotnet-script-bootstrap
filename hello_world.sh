#! /bin/bash
set -euo pipefail

"$( dirname "$0" )/_tools/run_dotnet_script.sh" "_$( basename "$0" .sh ).csx"
