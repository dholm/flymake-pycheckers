pycheckers for Emacs
====================

A fork of [pycheckers](https://bitbucket.org/alikins/sandbox/) from Bitbucket
with supplemental Emacs file for easier installation.

README
------

A hacked up version of the multiple-Python checkers script from EmacsWiki.

 - Simplified & faster
 - Extended with pep8.py
 - Extended with pydo (http://www.lunaryorn.de/code/pydo.html)
 - pylint & pychecker removed

Add flymake-pycheckers to your Emacs load path and put the following in your
.emacs:

    (setq pycheckers-command "/path/to/pycheckers")
    (autoload 'flymake-pyckeckers "flymake-pycheckers" "Pycheckers flymake support." t)

==============================================================================

The pycheckers script is made available by Jason Kirtland <jek@discorporate.us>
under the Creative Commons Share Alike 1.0 license:
http://creativecommons.org/licenses/sa/1.0/

The Emacs code is made available under the GPLv2 license:
http://www.gnu.org/licenses/gpl-2.0.html

Original work taken from http://www.emacswiki.org/emacs/PythonMode, author
unknown.

