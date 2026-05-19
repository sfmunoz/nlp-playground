## Project Structure

- `./run.sh` — bootstraps Jupyter Lab. Default path uses `uv run jupyter lab`, legacy
  path drops into Anaconda3 first.
- `pyproject.toml` — single-source of truth for deps.
- `.jupyter/jupyter_server_config.py` — Jupyter config.
- Notebooks live in per-library directories. Current libraries:
  `numpy/`, `pandas/`, `matplotlib/`, `nltk/`, `nlp/`, `seaborn/`.
  **Keep new notebooks in the appropriate directory.**
  Exception: NLP-related notebooks directly at the project root are OK.
- Each library directory has a `README.md` with: a brief description + a References
  section linking to the official docs and GitHub repo.
- The root `README.md` includes a "Library deps" section with a Mermaid dependency
  graph showing how libraries relate (e.g. seaborn → pandas → numpy).

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
  Exception: NLP-related notebooks can stay at the project root.
- Notebook filenames: `NNNN_brief_description.ipynb` (zero-padded **4-digit**
  sequential number + short snake_case name).
- Don't commit notebooks with output data — always strip before commit.
