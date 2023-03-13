setup:
	python3 -m venv ~/.devops
	~/.devops/bin/activate

install:
	# This should be run from inside a virtualenv
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	# Additional, optional, tests could go here
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb

lint:
	hadolint Dockerfile
	pylint --disable=R,C,W1203,W1202 hello.py

all: install lint test