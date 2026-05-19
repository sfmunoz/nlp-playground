# Pandas

**Pandas** examples.

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
    class pandas highlight
```

## References

- **[Pandas](https://pandas.pydata.org/)**
- [10 minutes to pandas](https://pandas.pydata.org/docs/user_guide/10min.html)
- [Pandas_Cheat_Sheet.pdf](https://pandas.pydata.org/Pandas_Cheat_Sheet.pdf)
