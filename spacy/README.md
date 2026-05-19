# spaCy

**spaCy** examples.

## Library Dependencies

```mermaid
---
config:
  look: handDrawn
  theme: neutral
---
graph TD
    jupyterlab(JupyterLab)
    notebook(Notebook)
    ipykernel(IPython Kernel)
    numpy(NumPy)
    matplotlib(Matplotlib)
    pandas(Pandas)
    seaborn(Seaborn)
    nltk(NLTK)
    spacy(spaCy)

    jupyterlab --> ipykernel
    notebook --> ipykernel
    matplotlib --> numpy
    pandas --> numpy
    seaborn --> numpy
    seaborn --> pandas
    seaborn --> matplotlib
    nltk -.-> matplotlib
    nltk -.-> numpy
    spacy --> numpy
    spacy -.-> matplotlib

    classDef highlight fill:#bbb,stroke-width:3px,color:#000
    class spacy highlight
```

## References

- **[spaCy](https://spacy.io/)**
- https://github.com/explosion/spaCy
