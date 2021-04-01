if [ "${BASH_SOURCE[0]}" != "" ]; then
  self="${BASH_SOURCE[0]}"
else
  self="$0"
fi

export XREF_DIR
XREF_DIR="$(dirname "$self")"

XREF_BIN="${XREF_DIR}/bin"
[[ ":$PATH:" == *":${XREF_BIN}:"* ]] || PATH="${XREF_BIN}:$PATH"
