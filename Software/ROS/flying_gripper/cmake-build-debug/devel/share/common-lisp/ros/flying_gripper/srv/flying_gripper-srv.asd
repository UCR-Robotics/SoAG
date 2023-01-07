
(cl:in-package :asdf)

(defsystem "flying_gripper-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "empty" :depends-on ("_package_empty"))
    (:file "_package_empty" :depends-on ("_package"))
    (:file "inflate" :depends-on ("_package_inflate"))
    (:file "_package_inflate" :depends-on ("_package"))
  ))