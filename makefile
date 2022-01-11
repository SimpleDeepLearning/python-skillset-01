# Demonstration Makefile

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
	@echo "Builiding Python Virtual Environment..."
	@python -m venv venv

.PHONY: activate-venv
activate-venv: ## Activate pyvenv
	@echo "ENTER: Activating Python Virtual Environment..."
	@venv\Scripts\activate.bat

.PHONY: installations
installations: ## Install requirements.txt into venv
	@echo "Installing requirements.txt to Python Virtual Environment..."
	@venv\Scripts\python -m pip install -r config/requirements.txt

.PHONY: upgrade-venv-pip
upgrade-venv-pip: ## Upgrade or install pip inside venv
	@echo "Updating and upgrading pip to Python Virtual Environment..."
	@venv\Scripts\python -m pip install --upgrade pip

.PHONY: exit-venv
exit-venv: ## Exit the venv
	@echo "EXIT: Leaving Python Virtual Environment..."
	@venv\Scripts\deactivate.bat\

##############################################################################################
# Tests
##############################################################################################

.PHONY: test-installations
test-installations: ## Test venv installations
	@echo "TESTING: Installations to requirements.txt to Python Virtual Environment..."
	@venv\Scripts\python -m pip install -r config/requirements.txt

.PHONY: test-build-venv
test-build-venv: ## Test the build of your venv
	@echo "TESTING: Build of the Python Virtual Environment"
	@python tests\venv.py

##############################################################################################
# Complex commands
##############################################################################################

.PHONY: build-venv
build-venv: create-venv upgrade-venv-pip installations activate-venv