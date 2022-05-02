from setuptools import setup

setup(
    name='bitbucket-backup',
    version='1.0.0',
    description='',
    url='https://github.com/samuelpearce/docker-bitbucket-backup',
    author='Samuel Pearce',
    install_requires=['requests'],
    scripts=['bitbucket-backup.py'],
    zip_safe=True
)
