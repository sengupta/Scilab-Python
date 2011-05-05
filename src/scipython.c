#include<Python.h>
#include<string.h>

void py_start(void)
{
    Py_Initialize();
}

void py_end(void)
{
    Py_Finalize();
}

void py_evaluate_expression(char *expression)
{
//    startpy();
    PyRun_SimpleString(expression);
//    endpy();
}

PyObject *py_import(char *scriptName)
{
    PyObject *pName, *pModule;
    PyRun_SimpleString("import sys");
    PyRun_SimpleString("sys.path.insert(0, '')");

    pName = PyString_FromString(scriptName);
    pModule = PyImport_Import(pName);
    Py_DECREF(pName);
    return pModule;
}
