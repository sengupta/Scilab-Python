A Simple Scilab-Python Gateway
==============================

This is a toolbox that allows you call and interact with a Python Interpreter from within Scilab. 

** Note that this is a work in progress and may not work as expected on your machine**

The following functions will be available once you load the toolbox: 

* ''pythonInit()''
  Initializes the Python Interpreter from within Scilab
* ''pythonEvaluate(expression)''
  Evaluates a Scilab string as a Python expression. Returns output of expression to Scilab console.
* ''expression = pythonExpression()''
  Sets up a prompt for a Python expression so that you do not have to create a string using Scilab functions. Returns a string corresponding to the Python expression which can then be used by ''pythonEvaluate()''
* ''pythonInterpret(n)''
  Starts a Python Interpreter console within Scilab for ''n'' lines. 
* ''pythonImport()''
  Imports a Python script from the current directory.
* ''pythonEnd()''
  Exits the Python interpreter. 


