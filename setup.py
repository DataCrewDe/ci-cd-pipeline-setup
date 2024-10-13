from setuptools import __version__, setup, find_packages
import os


def get_version():
    version_file = os.path.join("src", "version.py")
    with open(version_file) as f:
        exec(f.read())  # This will define __version__
        return __version__


setup(
    name="ci-cd-pipeline-setup",
    version=get_version(),  # Use the version from version.py
    packages=find_packages(where="src"),  # Specify where to find packages
    package_dir={"": "src"},  # Specify package directory
    install_requires=[
        # Add your runtime dependencies here
    ],
    extras_require={
        'dev': [
            'pytest',
            'pytest-cov',
            'flake8',
            'twine',
        ],
    },
)
