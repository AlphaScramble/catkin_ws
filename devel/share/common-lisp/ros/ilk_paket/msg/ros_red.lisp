; Auto-generated. Do not edit!


(cl:in-package ilk_paket-msg)


;//! \htmlinclude ros_red.msg.html

(cl:defclass <ros_red> (roslisp-msg-protocol:ros-message)
  ((x1
    :reader x1
    :initarg :x1
    :type cl:float
    :initform 0.0)
   (y1
    :reader y1
    :initarg :y1
    :type cl:float
    :initform 0.0))
)

(cl:defclass ros_red (<ros_red>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ros_red>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ros_red)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ilk_paket-msg:<ros_red> is deprecated: use ilk_paket-msg:ros_red instead.")))

(cl:ensure-generic-function 'x1-val :lambda-list '(m))
(cl:defmethod x1-val ((m <ros_red>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ilk_paket-msg:x1-val is deprecated.  Use ilk_paket-msg:x1 instead.")
  (x1 m))

(cl:ensure-generic-function 'y1-val :lambda-list '(m))
(cl:defmethod y1-val ((m <ros_red>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ilk_paket-msg:y1-val is deprecated.  Use ilk_paket-msg:y1 instead.")
  (y1 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ros_red>) ostream)
  "Serializes a message object of type '<ros_red>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ros_red>) istream)
  "Deserializes a message object of type '<ros_red>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y1) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ros_red>)))
  "Returns string type for a message object of type '<ros_red>"
  "ilk_paket/ros_red")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ros_red)))
  "Returns string type for a message object of type 'ros_red"
  "ilk_paket/ros_red")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ros_red>)))
  "Returns md5sum for a message object of type '<ros_red>"
  "448d67037dbf7c4353b30ca654f27801")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ros_red)))
  "Returns md5sum for a message object of type 'ros_red"
  "448d67037dbf7c4353b30ca654f27801")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ros_red>)))
  "Returns full string definition for message of type '<ros_red>"
  (cl:format cl:nil "float32 x1~%float32 y1~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ros_red)))
  "Returns full string definition for message of type 'ros_red"
  (cl:format cl:nil "float32 x1~%float32 y1~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ros_red>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ros_red>))
  "Converts a ROS message object to a list"
  (cl:list 'ros_red
    (cl:cons ':x1 (x1 msg))
    (cl:cons ':y1 (y1 msg))
))
