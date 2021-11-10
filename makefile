install:
	pip install --upgrade pip &&\
	pip install -r requirements.txt
lint: 
	pylint -- diable=R,C *.py

test:	
	python -m pytest -vv --cov=hello.py test_hello.py

all: 
	install lint test
