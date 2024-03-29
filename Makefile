install-deps:
	pip3 install --upgrade pip
	pip3 install flake8 pytest
	pip3 install -r requirements.txt

run-tests:
	export PYTHONPATH='./'; pytest

run-linter:
	flake8 . --count --exit-zero --max-complexity=10 --max-line-length=127 --statistics

start-bot:
	python app.py
