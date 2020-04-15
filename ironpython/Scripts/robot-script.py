#!D:\TestProject\ironpython\net45\ipy32.exe
# EASY-INSTALL-ENTRY-SCRIPT: 'RESTinstance==1.0.2','console_scripts','robot'
__requires__ = 'RESTinstance==1.0.2'
import sys
from pkg_resources import load_entry_point

if __name__ == '__main__':
    sys.exit(
        load_entry_point('RESTinstance==1.0.2', 'console_scripts', 'robot')()
    )
