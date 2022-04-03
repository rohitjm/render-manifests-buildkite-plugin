# environment hook for render-manifests plugin
# prepends plugin `bin` dir to $PATH

set -ueo pipefail

# Make everyhing in the `bin` dir available in $PATH
DIR="$(cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd)"
export PATH="$DIR/../bin:$PATH"

echo "___ : Welcome to render-manifests-plugin.."
echo ${BUILDKITE_COMMAND}
