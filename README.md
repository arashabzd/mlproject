# mlproject

A _"modern"_ project template for machine learning projects inspired by [cookiecutter-data-science](https://drivendata.github.io/cookiecutter-data-science/) template.

## Usage

1. Install [conda](https://docs.anaconda.com/free/miniconda/miniconda-install/) and [poetry](https://python-poetry.org/docs/) on your system (do not install poetry inside your virtual env)
2. Fork this repository
3. Create your new github repos with this template and clone
4. Run `make init name=[name] python=[version]` to initialize a project
5. Run `make install name=[name] python=[version]` to install an initialized project
6. Run `conda activate [name]` to activate environment

## Project Structure

```text
├── data                    <- Create other data directories to store intermediate data.
│   └── raw                 <- The original, immutable data dump.
├── mlproject               <- Source code for use in this project.
│   └── __init__.py         <- Makes Python module
├── notebooks               <- Jupyter notebooks. Naming convention is a number (for ordering),
│                              and a short `-` delimited description, e.g.
│                              `0.0-sample-notebook`.
├── reports                 <- Generated analysis from notebooks as Markdown (created by pre-commit).
├── results                 <- Any result of the analysis (model exports, plots, etc).
├── tests                   <- Tests.
├── .gitignore              <- Typical python gitignore with addition of data and resuts directories.
├── .pre-commit-config.yaml <- Pre-commit hooks for pytest, ruff, poetry, and nbconvert.
├── Dockerfile              <- Dockerfile for cotainarizing the project.
├── Makefile                <- Makefile. 
├── pyproject.toml          <- Managed by poetry. Makes this project pip installable with `pip install -e`.
├── README.md               <- The top-level README for developers using this project.
├── requirements-dev.txt    <- The dev requirements file (created by poetry pre-commit).
└── requirements.txt        <- The main requirements file (created by poetry pre-commit).
```
