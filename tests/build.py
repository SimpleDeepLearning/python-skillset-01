import threading
class VirtualEnvTester(threading.Thread):

    filepath = "..\\config\\defaults.yaml"
    venv_prefix = "venv\\Scripts\\python -m"

    def __init__(self):
        threading.Thread.__init__(self)

    def __del__(self):
        pass

    def test_dependencies(self)->None:
        pass

    def test_build(self)->None:
        pass

import os
import sys

venvdir = os.getenv('VIRTUAL_ENV')

if venvdir and os.path.isdir(venvdir):
    print("python3 virtual-env detected: %s" % venvdir)
    sys.exit(0)
else:
    print("python3 not in a virtual env")
    sys.exit(1)