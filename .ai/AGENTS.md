## Project Structure

- `./run.sh` — bootstraps Jupyter Lab. Default path uses `uv run jupyter lab`, legacy
  path drops into Anaconda3 first.
- `pyproject.toml` — single-source of truth for deps.
- `.jupyter/jupyter_server_config.py` — Jupyter config.
- Notebooks live in per-library directories: `numpy/`, `pandas/`, `matplotlib/`,
  `nltk/`, `nlp/`. **Keep new notebooks in the appropriate directory.**

## Git Workflow for Notebooks

Jupyter notebooks store cell outputs (plots, data, tracebacks) in the file, which
causes noisy diffs. Before committing a notebook:

1. Stage it first: `git add path/to/file.ipynb`
2. Strip outputs: `uv run jupyter nbconvert path/to/file.ipynb --clear-output`
3. Verify outputs are cleared (`"execution_count": null`, `"outputs": []`)
4. Re-stage: `git add path/to/file.ipynb`
5. Commit

The `.gitignore` already ignores `__pycache__/`, `.ipynb_checkpoints/`, `.venv/`,
and build artifacts.

## Conventions

- New topics go in their own subdirectory by library name.
- Notebook filenames: `NNNN_brief_description.ipynb` (zero-padded sequential number
  + short snake_case name).
- Don't commit notebooks with output data — always strip before commit.
