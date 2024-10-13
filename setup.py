from setuptools import setup, find_packages

setup(
    name='my_package',
    version='0.1.0',
    packages=find_packages(),
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
