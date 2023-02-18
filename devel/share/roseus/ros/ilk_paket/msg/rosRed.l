;; Auto-generated. Do not edit!


(when (boundp 'ilk_paket::rosRed)
  (if (not (find-package "ILK_PAKET"))
    (make-package "ILK_PAKET"))
  (shadow 'rosRed (find-package "ILK_PAKET")))
(unless (find-package "ILK_PAKET::ROSRED")
  (make-package "ILK_PAKET::ROSRED"))

(in-package "ROS")
;;//! \htmlinclude rosRed.msg.html


(defclass ilk_paket::rosRed
  :super ros::object
  :slots (_center ))

(defmethod ilk_paket::rosRed
  (:init
   (&key
    ((:center __center) 0.0)
    )
   (send-super :init)
   (setq _center (float __center))
   self)
  (:center
   (&optional __center)
   (if __center (setq _center __center)) _center)
  (:serialization-length
   ()
   (+
    ;; float32 _center
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _center
       (sys::poke _center (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _center
     (setq _center (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ilk_paket::rosRed :md5sum-) "dd6fe19c049784a7c020b3dcd2e01242")
(setf (get ilk_paket::rosRed :datatype-) "ilk_paket/rosRed")
(setf (get ilk_paket::rosRed :definition-)
      "float32 center
")



(provide :ilk_paket/rosRed "dd6fe19c049784a7c020b3dcd2e01242")


