all: venv
	. venv/bin/activate && python serve.py

venv:
	virtualenv --python=python3 venv
	. venv/bin/activate && pip install flask-restful flask-sqlalchemy wireless netifaces docker-py

clean:
	rm -rf *.pyc venv __pycache__
