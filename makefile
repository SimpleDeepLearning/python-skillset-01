# Demonstration Makefile

##############################################################################################
# Variables
##############################################################################################

current_dir := $(realpath .)
SETUP_PATH = ${current_dir}/setup_.py
APP_PATH = ${current_dir}/main.py

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
# Pre installs
##############################################################################################
# For this make commands to be functional, chocolatey must be installed in the Windows Device.

os-installs:
	


pre-installs: ## Automated push

##############################################################################################
# Commands
##############################################################################################

.PHONY: create-venv 
create-venv: ## Create pyvenv
	@echo Builiding Python Virtual Environment...
	@python -m venv venv

.PHONY: activate-venv
activate-venv: ## Activate pyvenv
	@echo Activating Python Virtual Environment...
	@venv\Scripts\activate

.PHONY: installations
installations: ## Install requirements.txt into venv
	@echo Installing requirements to Python Virtual Environment...
	@venv\Scripts\python ${SETUP_PATH}

.PHONY: upgrade-venv-pip
upgrade-venv-pip: ## Upgrade or install pip inside venv
	@echo Updating and upgrading pip to Python Virtual Environment...
	@venv\Scripts\python -m pip install --upgrade pip

.PHONY: exit-venv
exit-venv: ## Exit the venv
	@echo Leaving Python Virtual Environment...
	@venv\Scripts\deactivate

##############################################################################################
# Python Virtual Environment Test
##############################################################################################

.PHONY: test-build-venv
test-build-venv: ## Test the build of your venv
	@echo TESTING: Build of the Python Virtual Environment
	@python tests\venv.py

##############################################################################################
# Complex commands
##############################################################################################

.PHONY: build-venv
build-venv: create-venv upgrade-venv-pip activate-venv installations test-build-venv