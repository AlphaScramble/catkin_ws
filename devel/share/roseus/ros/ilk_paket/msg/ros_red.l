;; Auto-generated. Do not edit!


(when (boundp 'ilk_paket::ros_red)
  (if (not (find-package "ILK_PAKET"))
    (make-package "ILK_PAKET"))
  (shadow 'ros_red (find-package "ILK_PAKET")))
(unless (find-package "ILK_PAKET::ROS_RED")
  (make-package "ILK_PAKET::ROS_RED"))

(in-package "ROS")
;;//! \htmlinclude ros_red.msg.html


(defclass ilk_paket::ros_red
  :super ros::object
  :slots (_x1 _y1 ))

(defmethod ilk_paket::ros_red
  (:init
   (&key
    ((:x1 __x1) 0.0)
    ((:y1 __y1) 0.0)
    )
   (send-super :init)
   (setq _x1 (float __x1))
   (setq _y1 (float __y1))
   self)
  (:x1
   (&optional __x1)
   (if __x1 (setq _x1 __x1)) _x1)
  (:y1
   (&optional __y1)
   (if __y1 (setq _y1 __y1)) _y1)
  (:serialization-length
   ()
   (+
    ;; float32 _x1
    4
    ;; float32 _y1
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x1
       (sys::poke _x1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y1
       (sys::poke _y1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x1
     (setq _x1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y1
     (setq _y1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ilk_paket::ros_red :md5sum-) "448d67037dbf7c4353b30ca654f27801")
(setf (get ilk_paket::ros_red :datatype-) "ilk_paket/ros_red")
(setf (get ilk_paket::ros_red :definition-)
      "float32 x1
float32 y1
")



(provide :ilk_paket/ros_red "448d67037dbf7c4353b30ca654f27801")


