FORFILES /P C:\ /C "IF @fsize GEQ  2097152 copy @path C:\temp /Z"
