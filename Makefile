install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

lint:
	pylint --disable=R,C src/

format:
	black src/

test:
	export PYTHONPATH=src &&\
	python -m pytest -vv --cov=src/ tests/