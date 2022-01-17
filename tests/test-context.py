import os
import sys

venvdir = os.getenv('VIRTUAL_ENV')

if venvdir and os.path.isdir(venvdir):
    print("python3 virtual-env detected: %s" % venvdir)
    sys.exit(0)
else:
    print("python3 not in a virtual env")
    sys.exit(1)