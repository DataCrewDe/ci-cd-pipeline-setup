# ci-cd-pipeline-setup
Default repo template with ci-cd integration seup. 
## Running the Makefile
 
Makefile is a way of automating software building procedure and other complex tasks with dependencies along with organizing code compilation. We can use a Makefile to list down all the tasks, for example, installing dependencies, removing build artifacts, runnint unittests, code linting, code coverage, and so on.
 
We use pyproject.toml as a configuration file for packaging, and a dedicated Pipfile used by python virtual environments to manage project dependencies. To create a virtual environment, follow Step 1 and 2 based on your development OS (Linux or Windows), and to run the Makefile commands, follow Step 3.
 
### For Linux and WSL
 
*Step 1* : Install Python3.9 if you do not have it locally installed in your system
 
bash
# Add the deadsnakes repository
sudo add-apt-repository ppa:deadsnakes/ppa
 
# Update package lists
sudo apt update
 
# Install Python 3.9
sudo apt install python3.9

 
The add-apt-repository is a script that adds external APT repositories, but sometimes it's not pre-installed and you might get this error: sudo: add-apt-repository: command not found. To fix this:
 
bash
sudo apt-get install software-properties-common

 
*Step 2* : Create a python virtual environment for Python3.9
 
bash
# Install the venv package for Python 3.9
sudo apt install python3.9-venv
 
# Make a folder for venv virtual environments
mkdir ~/.venvs
 
# Create a new venv virtual environment with Python 3.9 in it
python3.9 -m venv ~/.venvs/my-venv-name
 
# Activate the new venv
source ~/.venvs/my-venv-name/bin/activate
(my-venv-name) me@mydevice:~$
 
# Check the Python version inside the venv:
(my-venv-name) me@mydevice:~$ python -V
Python 3.9.9

 
Continue to Step 3.
 
### For Windows
 
*Step 1* : Install virtualenv
 
bash
# If you try to run `virtualenv` and find it isn’t present, you can install it using `pip`.
pip install virtualenv

 
*Step 2* : Create a python virtual environment: cd to your project directory
 
bash
# Create a virtual environment
virtualenv --python C:\Path\To\Python\python.exe venv
 
# Activate the new venv
.\venv\Scripts\activate

 
*Step 3* : Run the make commands from the Makefile: make help
 
bash
# Build and compile the project
make install
 
# Install all development dependencies
make install-dev
 
# Clean the workspace
make clean
 
# Run unittests and check coverage
make run-tests
make coverage
 
# Check code linting
make lint
 
# Check cloudformation template linting
make cfn-lint
 
# To auto style and format python modules
make black-style

 
*Step 4* : (Optional) Deactivate virtual environment
 
```bash
# If you want to deactivate the venv virtual environment after you're done with running make commands
(my-venv-name) me@mydevice:~$ deactivate
me@mydevice:~$## Running the Makefile
 
Makefile is a way of automating software building procedure and other complex tasks with dependencies along with organizing code compilation. We can use a Makefile to list down all the tasks, for example, installing dependencies, removing build artifacts, runnint unittests, code linting, code coverage, and so on.
 
We use pyproject.toml as a configuration file for packaging, and a dedicated Pipfile used by python virtual environments to manage project dependencies. To create a virtual environment, follow Step 1 and 2 based on your development OS (Linux or Windows), and to run the Makefile commands, follow Step 3.
 
### For Linux and WSL
 
*Step 1* : Install Python3.9 if you do not have it locally installed in your system
 
bash
# Add the deadsnakes repository
sudo add-apt-repository ppa:deadsnakes/ppa
 
# Update package lists
sudo apt update
 
# Install Python 3.9
sudo apt install python3.9

 
The add-apt-repository is a script that adds external APT repositories, but sometimes it's not pre-installed and you might get this error: sudo: add-apt-repository: command not found. To fix this:
 
bash
sudo apt-get install software-properties-common

 
*Step 2* : Create a python virtual environment for Python3.9
 
bash
# Install the venv package for Python 3.9
sudo apt install python3.9-venv
 
# Make a folder for venv virtual environments
mkdir ~/.venvs
 
# Create a new venv virtual environment with Python 3.9 in it
python3.9 -m venv ~/.venvs/my-venv-name
 
# Activate the new venv
source ~/.venvs/my-venv-name/bin/activate
(my-venv-name) me@mydevice:~$
 
# Check the Python version inside the venv:
(my-venv-name) me@mydevice:~$ python -V
Python 3.9.9

 
Continue to Step 3.
 
### For Windows
 
*Step 1* : Install virtualenv
 
bash
# If you try to run `virtualenv` and find it isn’t present, you can install it using `pip`.
pip install virtualenv

 
*Step 2* : Create a python virtual environment: cd to your project directory
 
bash
# Create a virtual environment
virtualenv --python C:\Path\To\Python\python.exe venv
 
# Activate the new venv
.\venv\Scripts\activate

 
*Step 3* : Run the make commands from the Makefile: make help
 
bash
# Build and compile the project
make install
 
# Install all development dependencies
make install-dev
 
# Clean the workspace
make clean
 
# Run unittests and check coverage
make run-tests
make coverage
 
# Check code linting
make lint
 
# Check cloudformation template linting
make cfn-lint
 
# To auto style and format python modules
make black-style

 
*Step 4* : (Optional) Deactivate virtual environment
 
```bash
# If you want to deactivate the venv virtual environment after you're done with running make commands
(my-venv-name) me@mydevice:~$ deactivate
me@mydevice:~$
