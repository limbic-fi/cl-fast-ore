(defpackage fast-ore/system
  (:use :common-lisp
        :asdf)
  (:export :author
           :copyright
           :version-string
           :version-list
           :version-major
           :version-minor
           :version-revision))
(in-package :fast-ore/system)

(defparameter author "Christopher Mark Gore <cgore@cgore.com>")
(defparameter copyright "Copyright © 2021 Christopher Mark Gore, all rights reserved.")
(defparameter version-major    0)
(defparameter version-minor    0)
(defparameter version-revision 1)

(defun version-list ()
  (list version-major version-minor version-revision))

(defun version-string ()
  (format nil "~{~A.~A.~A~}" (version-list)))

(defsystem "zapper-fi"
  :description "Library for FastORE wrapping the C library."
  :version #.(version-string)
  :author author
  :license "BSD 3-Clause"
  :depends-on ("alexandria"
               "cl-autowrap"
               "sigma")
  :components ((:module "source" :components ((:file "main")))))
