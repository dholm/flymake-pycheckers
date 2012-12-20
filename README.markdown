pycheckers for Emacs
====================

A fork of [pycheckers](https://bitbucket.org/alikins/sandbox/) from Bitbucket.

README
------

A hacked up version of the multiple-Python checkers script from EmacsWiki.

 - Simplified & faster
 - Extended with pep8.py
 - Extended with pydo (http://www.lunaryorn.de/code/pydo.html)
 - pylint & pychecker removed

Drop something like this in your .emacs:

    (when (load "flymake" t)
      (defun flymake-pycheckers-init ()
        (let* ((temp-file (flymake-init-create-temp-buffer-copy
                           'flymake-create-temp-inplace))
               (local-file (file-relative-name
                            temp-file
                            (file-name-directory buffer-file-name))))
          (list "/path/to/this/file" (list local-file))))


You may also need to set up your path up in the __main__ function at the
bottom of the file and change the #! line above to an appropriate interpreter.

==============================================================================

This code is made available by Jason Kirtland <jek@discorporate.us> under the
Creative Commons Share Alike 1.0 license:
http://creativecommons.org/licenses/sa/1.0/

Original work taken from http://www.emacswiki.org/emacs/PythonMode, author
unknown.

