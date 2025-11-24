# Diagnostic script — save in the repo root (the folder that contains the "setup" directory)
import os
import sys
import importlib.util
print("=== Environment diagnostic ===")
print("cwd:", os.getcwd())
print("python executable:", sys.executable)
print("python version:", sys.version.replace(os.linesep, " "))
print()
print("=== sys.path ===")
for i, p in enumerate(sys.path):
    print(f"{i:02d}: {p!r}")
print()
print("=== package discovery ===")
print("find_spec('setup'):", importlib.util.find_spec("setup"))
print("find_spec('setup.setup_windows'):", importlib.util.find_spec("setup.setup_windows"))
print()
print("=== setup/ folder contents (if accessible) ===")
try:
    print("os.listdir('setup'):", os.listdir("setup"))
except Exception as e:
    print("Could not list setup/:", repr(e))
print()
print("=== file checks ===")
for fname in ("setup/__init__.py", "setup/setup_windows.py", "setup/setup_common.py"):
    print(fname, "exists?", os.path.exists(fname))
print()
print("=== end diagnostic ===")