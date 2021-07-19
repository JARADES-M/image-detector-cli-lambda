install:
		pip install --upgrade pip &&\
		pip install -r requirements.txt

format:
	    black *.py

lint:
		pylint --disable=R,C cvcli.py

test:
		python -m pytest -vv --cov=cvcli test_cvcli.py

all: install format lint test
