# System-wide GDB initialization file.
define init-gdb
source /opt/pwndbg/gdbinit.py
end
document init-gdb
Initializes PwnDBG
end

define init-peda
source /opt/peda/peda.py
source /opt/Pwngdb/pwngdb.py
source /opt/Pwngdb/angelheap/gdbinit.py
define hook-run
python
import angelheap
angelheap.init_angelheap()
end
end
end
document init-peda
Initializes the PEDA (Python Exploit Development Assistant for GDB) framework
end

define init-peda-arm
source /opt/peda-arm/peda-arm.py
end
document init-peda-arm
Initializes the PEDA (Python Exploit Development Assistant for GDB) framework for ARM.
end

define init-peda-intel
source /opt/peda-arm/peda-intel.py
end
document init-peda-intel
Initializes the PEDA (Python Exploit Development Assistant for GDB) framework for INTEL.
end

define init-pwndbg
source /opt/pwndbg/gdbinit.py
end
document init-pwndbg
Initializes PwnDBG
end

define init-gef
source /opt/gef/gef.py
end
document init-gef
Initializes GEF (GDB Enhanced Features)
end