# Seaborn

**Seaborn** examples.

## Library Dependencies

```mermaid
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

    classDef default fill:#ffe,stroke:#678,stroke-width:1px,color:#884;
    classDef highlight fill:#cc8,stroke:#345,stroke-width:2px
    class seaborn highlight
```

## References

- **[Seaborn](https://seaborn.pydata.org/)**
- https://github.com/mwaskom/seaborn
