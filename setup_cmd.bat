@echo off

doskey clear=cls
doskey ls=dir
doskey rm=del
doskey ..=cd ..\..
doskey ...=cd ..\..\..
doskey servethis=python -m SimpleHTTPServer

"C:\Program Files (x86)\clink\0.3\clink" inject --profile "C:\Users\cartman\AppData\Local\clink"
