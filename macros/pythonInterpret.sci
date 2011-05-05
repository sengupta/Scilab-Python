function pythonInterpret(nLines)
    if ~exists("nLines") then, 
        nLines = 1, 
        mprintf("Enter 1 Python expression\n"); 
    else
        mprintf("Enter %d Python expressions: \n", nLines);
    end
    for n = 1:nLines
        mprintf("%d/%d", n, nLines);
        expression = input(">>> ", "string");
        pythonEvaluate(expression);
    end
endfunction

