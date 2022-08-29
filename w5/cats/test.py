import trace, io
from contextlib import redirect_stdout
from cats import *
with io.StringIO() as buf, redirect_stdout(buf):
    trace.Trace(trace=True).runfunc(shifty_shifts, "someaweqwertyuio", "awesomeasdfghjkl", 3)
    output = buf.getvalue()
    print(output)
    len([line for line in output.split('\n') if 'funcname' in line]) < 10

