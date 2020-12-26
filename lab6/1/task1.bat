mkdir LAB6

ver>LAB6\version.txt
wmic os get FreePhysicalMemory,TotalVisibleMemorySize>LAB6\memory.txt
wmic logicaldisk get Name, Description >LAB6\descript.txt
