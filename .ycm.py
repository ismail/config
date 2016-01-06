import ycm_core

flags = [
'-Wall',
'-Wextra',
'-fopenmp',
]

def FlagsForFile( filename, **kwargs ):
    if filename.endswith(".c") or filename.endswith(".C"):
        flags.append("-std=c11")
    elif filename.endswith(".cxx") or filename.endswith(".cpp"):
        flags.append("-std=c++14")

    return {
        'flags': flags,
        'do_cache': True
    }
