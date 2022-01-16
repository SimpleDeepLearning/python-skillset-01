import os

class SetUpExecuter():
    filepath = "config/defaults.yaml"
    def __init__(self)->None:

        self.read_defaults()
        self.global_installs()
        self.install_services()

    def global_installs(self)->None:
        print("Install globally needed modules...")

        for module in self.yaml_config["python"]["global"]["standard"]["modules"]:
            try:
                print("Checking {} module into venv".format(module["import"]))
                __import__(module["import"])
            except ImportError as error:
                print("Installing {} module into venv".format(module["install"]))
                os.system("pip install {}".format(module["install"]))

    def install_services(self)->None:
        print("Checking in to services installation...")

        for module in self.yaml_config["python"]["services"]["modules"]:
            try:
                print("Checking {} module into venv".format(module["import"]))
                __import__(module["import"])
            except ImportError as error:
                print("Installing {} module into venv".format(module["install"]))
                os.system("pip install {}".format(module["install"]))

    def read_defaults(self)->None:
        print("Reading configuration variables on YAML...")
        fullpath = os.path.join(os.path.dirname(__file__), self.filepath)

        try:
            print("Checking {} module into venv".format("yaml"))
            test = __import__("yaml")
            test = None
        except ImportError as error:
            print("Installing {} module into venv".format("yaml"))
            os.system("pip install {}".format("PyYAML"))
        finally:
            yaml = __import__("yaml")

        with open(fullpath, 'r') as file:
            self.yaml_config = yaml.safe_load(file)