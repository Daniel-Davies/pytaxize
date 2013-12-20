from setuptools import setup

setup(name='pytaxize',
	version='0.1',
	description='Taxonomic toolbelt for Python',
    author='Scott Chamberlain',
    author_email='myrmecocystus@gmail.com',
    url='http://github.com/SChamberlain/pytaxize',
    packages=['pytaxize'],
    install_requires=['requests>2.0', 
                      'pandas>0.1', 
                      'BeautifulSoup>3.0'],
    )