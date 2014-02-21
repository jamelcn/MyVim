#加入python pretty-printers让gdb显示stl内容
python  
import sys  
import os  
p = os.path.expanduser('~/.gdb/python')  
print p  
if os.path.exists(p):  
    sys.path.insert(0, p)  
    from libstdcxx.v6.printers import register_libstdcxx_printers  
    register_libstdcxx_printers(None)  
end 
