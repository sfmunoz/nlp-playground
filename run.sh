#!/bin/bash

set -e -o pipefail

[ "${ANACONDA3_FOLDER}" = "" ] && ANACONDA3_FOLDER="/anaconda3"

CONDA_BIN="${ANACONDA3_FOLDER}/bin/conda"

if [ ! -x "${CONDA_BIN}" ]; then
  echo "error: cannot execute '${CONDA_BIN}'"
  exit 1
fi

cd "$(dirname "$0")"
eval "$("${CONDA_BIN}" shell.bash hook)"
set -x
jupyter lab --config=./.jupyter/jupyter_server_config.py
