rm -f requirements.txt
python3.9 --version
python3.9 -m venv venv
./venv/bin/python -m pip install pip==21.2.4
./venv/bin/python -m pip install pip-tools
./venv/bin/pip-compile requirements.in -o requirements.txt
./venv/bin/pip-sync requirements.txt
./venv/bin/pre-commit install
./venv/bin/jupyter notebook --port 10001 --allow-root
