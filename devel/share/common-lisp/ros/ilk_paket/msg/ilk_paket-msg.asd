
(cl:in-package :asdf)

(defsystem "ilk_paket-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "camera" :depends-on ("_package_camera"))
    (:file "_package_camera" :depends-on ("_package"))
    (:file "drone" :depends-on ("_package_drone"))
    (:file "_package_drone" :depends-on ("_package"))
    (:file "kamera" :depends-on ("_package_kamera"))
    (:file "_package_kamera" :depends-on ("_package"))
    (:file "ros_red" :depends-on ("_package_ros_red"))
    (:file "_package_ros_red" :depends-on ("_package"))
  ))