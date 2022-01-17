# Demonstration Makefile

##############################################################################################
# Variables
##############################################################################################

current_dir := $(realpath .)
SETUP_PATH = ${current_dir}/setup_.py
APP_PATH = ${current_dir}/main.py
BUILD_TEST_PATH = ${current_dir}/tests/build.py

##############################################################################################
# Automated actions
##############################################################################################

dev-automated-push: ## Automated push
	@echo "Automated push to dev branch to origin"
	@git fetch origin
	@git add .
	@git commit -m "AUTOMATED ACTION: Saving changes..."
	@git push -u origin dev


##############################################################################################
# Commands
##############################################################################################

.PHONY: create-venv 
create-venv: ## Create pyvenv
	@echo Builiding Python Virtual Environment...
	@python -m venv venv
	@echo.

.PHONY: activate-venv
activate-venv: ## Activate pyvenv
	@echo Activating Python Virtual Environment...
	@venv\Scripts\activate.bat
	@echo.

.PHONY: installations
installations: ## Install requirements.txt into venv
	@echo Installing requirements to Python Virtual Environment...
	@venv\Scripts\python ${SETUP_PATH}
	@echo.

.PHONY: upgrade-venv-pip
upgrade-venv-pip: ## Upgrade or install pip inside venv
	@echo Updating and upgrading pip to Python Virtual Environment...
	@venv\Scripts\python -m pip install --upgrade pip
	@echo.

.PHONY: exit-venv
exit-venv: ## Exit the venv
	@echo Leaving Python Virtual Environment...
	@venv\Scripts\deactivate.bat
	@echo.

##############################################################################################
# Python Virtual Environment Test
##############################################################################################

.PHONY: test-build-venv
test-build-venv: ## Test the build of your venv
	@echo TESTING: Build of the Python Virtual Environment
	@venv\Scripts\python tests\build.py
	@echo.

##############################################################################################
# Complex commands
##############################################################################################

.PHONY: build-venv
build-venv: create-venv upgrade-venv-pip activate-venv installations test-build-venv