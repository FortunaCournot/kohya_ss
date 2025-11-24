@echo off

:: Create the directory if it doesn't exist
mkdir ".\logs\setup" > nul 2>&1

REM SET PATH=%CD%;%PATH%
echo. >setup\__init__.py

REM make sure we have setuptools available in the venv    
python -m pip install wheel
REM make sure we have setuptools available in the venv    
python -m pip install --no-input -q setuptools

python diag_setup_env.py

python -m setup.setup_windows_embedded --headless

