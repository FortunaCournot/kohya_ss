@echo off

:: Create the directory if it doesn't exist
mkdir ".\logs\setup" > nul 2>&1

REM SET PATH=%CD%;%PATH%
echo. >setup\__init__.py

REM make sure we have setuptools available in the venv    
python -m pip install wheel
REM make sure we have setuptools available in the venv    
python -m pip install --no-input -q setuptools

python -c "import sys,runpy; sys.path.insert(0, r'%CD%'); runpy.run_path('diag_setup_env.py', run_name='main')"

ECHO running setup ...
python -c "import sys,os,runpy; sys.path.insert(0, r'%CD%'); runpy.run_module('setup.setup_windows_embedded', run_name='main')"
ECHO done.


