.PHONY: install test lint build upload clean

# Environment variables
PYTHON = python3

# Install dependencies
install:
	$(PYTHON) -m pip install --upgrade pip setuptools wheel
	$(PYTHON) -m pip install -r requirements.txt

# Run tests
test:
	$(PYTHON) -m pytest --cov=my_package tests/

# Lint code
lint:
	$(PYTHON) -m flake8 my_package

# Build the package
build: clean
	$(PYTHON) setup.py sdist bdist_wheel

# Upload the package to PyPI
upload:
	$(PYTHON) -m twine upload dist/*

# Clean up build artifacts
clean:
	rm -rf build dist *.egg-info
