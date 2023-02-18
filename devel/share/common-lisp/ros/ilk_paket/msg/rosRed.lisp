; Auto-generated. Do not edit!


(cl:in-package ilk_paket-msg)


;//! \htmlinclude rosRed.msg.html

(cl:defclass <rosRed> (roslisp-msg-protocol:ros-message)
  ((center
    :reader center
    :initarg :center
    :type cl:float
    :initform 0.0))
)

(cl:defclass rosRed (<rosRed>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <rosRed>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'rosRed)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ilk_paket-msg:<rosRed> is deprecated: use ilk_paket-msg:rosRed instead.")))

(cl:ensure-generic-function 'center-val :lambda-list '(m))
(cl:defmethod center-val ((m <rosRed>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ilk_paket-msg:center-val is deprecated.  Use ilk_paket-msg:center instead.")
  (center m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <rosRed>) ostream)
  "Serializes a message object of type '<rosRed>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'center))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <rosRed>) istream)
  "Deserializes a message object of type '<rosRed>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'center) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<rosRed>)))
  "Returns string type for a message object of type '<rosRed>"
  "ilk_paket/rosRed")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rosRed)))
  "Returns string type for a message object of type 'rosRed"
  "ilk_paket/rosRed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<rosRed>)))
  "Returns md5sum for a message object of type '<rosRed>"
  "dd6fe19c049784a7c020b3dcd2e01242")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'rosRed)))
  "Returns md5sum for a message object of type 'rosRed"
  "dd6fe19c049784a7c020b3dcd2e01242")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<rosRed>)))
  "Returns full string definition for message of type '<rosRed>"
  (cl:format cl:nil "float32 center~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'rosRed)))
  "Returns full string definition for message of type 'rosRed"
  (cl:format cl:nil "float32 center~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <rosRed>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <rosRed>))
  "Converts a ROS message object to a list"
  (cl:list 'rosRed
    (cl:cons ':center (center msg))
))
