.ONESHELL:

all: create-conda-env poetry-install pre-commit-install

create-conda-env:
	conda env update --prune --name $(ENV) -f environment.yaml 

poetry-install:
	conda run -n $(ENV) poetry install

pre-commit-install:
	conda run -n $(ENV) pre-commit install
