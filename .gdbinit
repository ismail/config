set detach-on-fork off
set target-async on
set non-stop on
set pagination off
set history save on
set history expansion on

python
import os
import sys

sys.path.insert(0, '%s/.gdb/printers' % os.path.expanduser('~'))

from qt4 import register_qt4_printers
register_qt4_printers (None)
end

