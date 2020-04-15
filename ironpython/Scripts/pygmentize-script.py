#!D:\TestProject\ironpython\net45\ipy32.exe
# EASY-INSTALL-ENTRY-SCRIPT: 'Pygments==2.6.1','console_scripts','pygmentize'
__requires__ = 'Pygments==2.6.1'
import sys
from pkg_resources import load_entry_point

if __name__ == '__main__':
    sys.exit(
        load_entry_point('Pygments==2.6.1', 'console_scripts', 'pygmentize')()
    )
