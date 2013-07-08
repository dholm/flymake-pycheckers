;;; flymake-pycheckers.el --- Runs available Python code checkers on buffer

;; Copyright (C) 2013 Free Software Foundation, Inc.
;;
;; Author: David Holm <dholmster@gmail.com>
;; Maintainer: David Holm <dholmster@gmail.com>
;; Created: 08 Jul 2013
;; Version: 1.0
;; Keywords: python flymake

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program; if not, write to the Free Software
;; Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.

;;; Commentary:

;; Flymake mode for automatic validation of Python code.
;; Base on code from http://www.emacswiki.org/emacs/PythonProgrammingInEmacs
;; and https://bitbucket.org/alikins/sandbox.

;;; Installation:

;; You should add this to .emacs file after putting it on your load-path:
;;
;;
;;   (require 'flymake-pycheckers)
;;
;;   ;; if needed
;;   (setq pycheckers-command "/path/to/pycheckers")
;;   (flymake-pycheckers-init)

;;; ChangeLog:

;; 2013-07-08
;; - initial release

;;; Known Bugs:

;;; Todo:

;;; Code:

(eval-when-compile (require 'flymake))

(defgroup flymake-pycheckers nil
  "Runs available Python code checkers on buffer using flymake"
  :group 'tools)

(defcustom pycheckers-command "pycheckers"
  "Path to pycheckers script"
  :type 'string
  :group 'flymake-pycheckers)

;;;###autoload
(defun flymake-pycheckers-init ()
  (let* ((temp-file (flymake-init-create-temp-buffer-copy
                     'flymake-create-temp-inplace))
         (local-file (file-relative-name
                      temp-file
                      (file-name-directory buffer-file-name))))
    (list pycheckers-command (list local-file))))

;;-----------------------------------------------------------------------------
;; Installation

;;;###autoload
(eval-after-load "flymake" '(add-to-list 'flymake-allowed-file-name-masks
                                         '("\\.py\\'" flymake-pycheckers-init)))

(provide 'flymake-pycheckers)
;;; flymake-pycheckers.el ends here
