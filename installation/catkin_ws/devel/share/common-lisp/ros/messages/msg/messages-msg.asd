
(cl:in-package :asdf)

(defsystem "messages-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "euler" :depends-on ("_package_euler"))
    (:file "_package_euler" :depends-on ("_package"))
  ))