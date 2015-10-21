set confirm off
set detach-on-fork off
set disable-randomization off
set follow-fork-mode child
set history filename ~/.gdb_history
set history save
set history expansion
set non-stop on
set pagination off
set print pretty on
set print array off
set print array-indexes on
set target-async on
set verbose off

python
import os
import sys

sys.path.insert(0, '%s/.gdb/printers' % os.path.expanduser('~'))

from qt4 import register_qt4_printers
register_qt4_printers (None)
end

