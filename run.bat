DEL requirements.txt
python --version
python -m venv vwin
.\vwin\Scripts\python.exe -m pip install pip==21.2.4
.\vwin\Scripts\python.exe -m pip install pip-tools
.\vwin\Scripts\pip-compile.exe requirements.in -o requirements.txt
.\vwin\Scripts\pip-sync.exe requirements.txt
.\vwin\Scripts\pre-commit.exe install
.\vwin\Scripts\jupyter.exe notebook --port 10001 --allow-root
