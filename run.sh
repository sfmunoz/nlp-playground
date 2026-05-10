#!/bin/bash
set -e -o pipefail
cd "$(dirname "$0")"
eval "$(/anaconda3/bin/conda shell.bash hook)"
set -x
jupyter lab --notebook-dir=.
