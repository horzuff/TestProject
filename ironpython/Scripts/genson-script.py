#!D:\TestProject\ironpython\net45\ipy32.exe
# EASY-INSTALL-ENTRY-SCRIPT: 'genson==1.1.0','console_scripts','genson'
__requires__ = 'genson==1.1.0'
import sys
from pkg_resources import load_entry_point

if __name__ == '__main__':
    sys.exit(
        load_entry_point('genson==1.1.0', 'console_scripts', 'genson')()
    )
