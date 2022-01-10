.PHONY: create-venv 
create-venv:
	@python -m venv venv

.PHONY: activate-venv
activate-venv:
	@venv\Scripts\activate.bat	

.PHONY: activate-venv
activate-venv:
	@venv\Scripts\activate.bat

.PHONY: installation
installations: 
	@
	
.PHONY: exit-venv
exit-venv:
	@venv\Scripts\activate.bat
