.PHONY: install test lint build upload clean

# Environment variables
PYTHON = python3

# Install dependencies
install:
	$(PYTHON) -m pip install --upgrade pip setuptools wheel
	$(PYTHON) -m pip install -r requirements.txt

# Run tests
test:
	$(PYTHON) -m pytest --cov=ci-cd-pipeline-setup src/tests/

# Lint code
lint:
	$(PYTHON) -m flake8 src/

# Build the package
build: clean
	$(PYTHON) setup.py sdist bdist_wheel

# Upload the package to PyPI
upload:
	@$(TWINE) upload dist/* --username $(shell grep -A 1 '\[pypi\]' $(PYPI_RC) | grep 'username' | cut -d'=' -f2 | tr -d ' ') --password $(shell grep -A 1 '\[pypi\]' $(PYPI_RC) | grep 'password' | cut -d'=' -f2 | tr -d ' ')
# Clean up build artifacts
clean:
	rm -rf build dist *.egg-info
