@echo off

SET PYTHONPATH=%CD%
SET PATH=%CD%\..\AI-Toolkit-vrweare-Install\python_embeded;%CD%\..\AI-Toolkit-vrweare-Install\python_embeded\Scripts;%PATH%

echo Starting the GUI... this might take some time...

python -c "import sys,os,runpy; sys.path.insert(0, r'%CD%'); runpy.run_module('kohya_gui_main', run_name='main')"