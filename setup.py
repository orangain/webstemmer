#!/usr/bin/env python
from distutils.core import setup
from webstemmer import __version__

setup(name='webstemmer',
      version=__version__,
      description='Web crawler and HTML layout analyzer',
      long_description='Webstemmer is a web crawler and HTML layout analyzer that '
      'automatically extracts main text of a news site without having '
      'banners, ads and/or navigation links mixed up.',
      license='MIT/X',
      author='Yusuke Shinyama',
      author_email='yusuke at cs dot nyu dot edu',
      url='http://www.unixuser.org/~euske/python/webstemmer/index.html',
      packages=['webstemmer'],
      scripts=['webstemmer/textcrawler.py',
               'webstemmer/analyze.py',
               'webstemmer/extract.py',
               'tools/html2txt.py', 'tools/perf.py', 'tools/urldbutils.py'],
      )
