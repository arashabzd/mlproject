.ONESHELL:

all: create-conda-env \
	poetry-init \
	make-package \
	poetry-install \
	pre-commit-install

create-conda-env:
	conda create -y -q --name $(name) python=$(python) 

poetry-init:
	conda run -n $(name) poetry init -n -q \
	--name $(name) \
	--python ^$(python) \
	--dev-dependency ipykernel \
	--dev-dependency pre-commit \
	--dev-dependency pytest

make-package:
	mkdir $(name) && touch $(name)/__init__.py

poetry-install:
	conda run -n $(name) poetry install	-n -q

pre-commit-install:
	conda run -n $(name) pre-commit install
