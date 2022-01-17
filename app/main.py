# A MUST import
#-----------------------------------------------------------
import threading

# Services module import
# TODO: Import the services you plan to use
#-----------------------------------------------------------
from storage_services_module._aws_ import AWSManager
from storage_services_module._azure_ import AzureManager

# Execution
# TODO: Create a threaded execution for each service
#-----------------------------------------------------------
class AWSTask(threading.Thread, AWSManager):
    def __init__(self):
        threading.Thread.__init__(self)

    def run(self):
        #Tasks to be done
        print("\nStarting AWS threaded execution...\n")
        try:
            # TODO: Insert your code here
            pass
        except Exception as error:
            pass


class AzureTask(threading.Thread, AzureManager):
    def __init__(self):
        threading.Thread.__init__(self)

    def run(self):
        #Tasks to be done
        print("\nStarting Azure threaded execution...\n")
        try:
            # TODO: Insert your code here
            pass
        except Exception as error:
            pass

# Main Execution
# TODO: Call your tasks in the following format:
"""
    <variable> = <Task>()
    <variable>.start()
    <variable>.join()
"""
#-----------------------------------------------------------
if __name__ == "__main__":
    print("\nWorking on the main thread...\n")

    #Creating AWS threaded execution, thread which will later join the main thread
    aws_services= AWSTask()
    aws_services.start()
    aws_services.join()

    #Creating Azure threaded execution, thread which will later join the main thread
    azure_services = AzureTask()
    azure_services.start()
    azure_services.join()