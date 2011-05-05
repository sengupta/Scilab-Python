function linked_lib = pythonInit()
    macros_path = get_absolute_file_path("pythonInit.sci");
    macros_path  = getshortpathname(macros_path);
    root_path = strncpy(macros_path , length(macros_path)-length("\macros\") );
    mprintf("\nLoading Python\n");
    pathsrc = pathconvert( root_tlbx ) + "src" + filesep();


    function_list = ["py_start"; "py_end"; "py_evaluate_expression"; "py_import"];
    linked_lib = link(pathsrc + "libscipython.so", function_list, 'c');
    call("py_start");
endfunction


