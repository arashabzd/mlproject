.ONESHELL:

pkg_name := $(subst -,_,$(name))

init: create-conda-env \
	poetry-init \
	create-package \
	poetry-install \
	poetry-export \
	pre-commit-install

install: create-conda-env \
	poetry-install \
	pre-commit-install	

create-conda-env:
	conda create -y -q --name $(name) python=$(python) 

poetry-init:
	conda run -n $(name) \
	poetry init -n -q \
	--name $(name) \
	--python ^$(python) \
	--dev-dependency ipykernel \
	--dev-dependency pre-commit \
	--dev-dependency pytest

create-package:
	mkdir $(pkg_name) && touch $(pkg_name)/__init__.py

poetry-install:
	conda run -n $(name) \
	poetry install	-n -q

poetry-export:
	poetry self add poetry-plugin-export
	conda run -n $(name) \
	poetry export -f requirements.txt -o requirements.txt
	conda run -n $(name) \
	poetry export --with main --with dev -f requirements.txt -o requirements-dev.txt

pre-commit-install:
	conda run -n $(name) \
	pre-commit install
