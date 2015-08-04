import ycm_core

flags = [
'-Weverything',
'-Wno-missing-prototypes',
]

def FlagsForFile( filename, **kwargs ):
    if filename.endswith(".c") or filename.endswith(".C"):
        flags.append("-std=c11")
    elif filename.endswith(".cxx") or filename.endswith(".cpp"):
        flags.append("-std=c++14")
        flags.append("-Wno-c++98-compat")

    return {
        'flags': flags,
        'do_cache': True
    }
