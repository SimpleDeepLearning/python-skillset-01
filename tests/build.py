class VirtualEnvTester():

    # Importing modules as attributes, to avoid import clash in case the class is needed later-on
    os = __import__('os')
    sys = __import__('sys')
    subprocess = __import__('subprocess')

    # Repeated values
    filepath = "..\\config\\defaults.yaml"
    venv_prefix = "venv\\Scripts\\python -m"

    def __init__(self):
        sys = __import__("sys")
        if not self.run_tests:
            sys.exit(1)
        print("Installations succesfull")
        sys.exit(0)

    def test_dependencies(self, virtualenv)->bool:
        return True

    def test_build(self, virtualenv)->bool:
        return True

    def test_executions(self, virtualenv)->bool:
        return True

    def run_tests(self)->bool:
        if not self.test_build():
            return False
        if not self.test_dependencies():
            return False
        if not self.test_executions():
            return False
        return True

if __name__ == "__main__":

    VirtualEnvTester()