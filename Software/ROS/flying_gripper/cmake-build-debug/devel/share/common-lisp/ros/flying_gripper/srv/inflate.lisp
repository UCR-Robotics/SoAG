; Auto-generated. Do not edit!


(cl:in-package flying_gripper-srv)


;//! \htmlinclude inflate-request.msg.html

(cl:defclass <inflate-request> (roslisp-msg-protocol:ros-message)
  ((dt
    :reader dt
    :initarg :dt
    :type cl:float
    :initform 0.0))
)

(cl:defclass inflate-request (<inflate-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <inflate-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'inflate-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name flying_gripper-srv:<inflate-request> is deprecated: use flying_gripper-srv:inflate-request instead.")))

(cl:ensure-generic-function 'dt-val :lambda-list '(m))
(cl:defmethod dt-val ((m <inflate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flying_gripper-srv:dt-val is deprecated.  Use flying_gripper-srv:dt instead.")
  (dt m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <inflate-request>) ostream)
  "Serializes a message object of type '<inflate-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'dt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <inflate-request>) istream)
  "Deserializes a message object of type '<inflate-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dt) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<inflate-request>)))
  "Returns string type for a service object of type '<inflate-request>"
  "flying_gripper/inflateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'inflate-request)))
  "Returns string type for a service object of type 'inflate-request"
  "flying_gripper/inflateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<inflate-request>)))
  "Returns md5sum for a message object of type '<inflate-request>"
  "c789a3ecb85f6b02890d8c7045e25eac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'inflate-request)))
  "Returns md5sum for a message object of type 'inflate-request"
  "c789a3ecb85f6b02890d8c7045e25eac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<inflate-request>)))
  "Returns full string definition for message of type '<inflate-request>"
  (cl:format cl:nil "float64 dt~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'inflate-request)))
  "Returns full string definition for message of type 'inflate-request"
  (cl:format cl:nil "float64 dt~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <inflate-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <inflate-request>))
  "Converts a ROS message object to a list"
  (cl:list 'inflate-request
    (cl:cons ':dt (dt msg))
))
;//! \htmlinclude inflate-response.msg.html

(cl:defclass <inflate-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass inflate-response (<inflate-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <inflate-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'inflate-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name flying_gripper-srv:<inflate-response> is deprecated: use flying_gripper-srv:inflate-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <inflate-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flying_gripper-srv:success-val is deprecated.  Use flying_gripper-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <inflate-response>) ostream)
  "Serializes a message object of type '<inflate-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <inflate-response>) istream)
  "Deserializes a message object of type '<inflate-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<inflate-response>)))
  "Returns string type for a service object of type '<inflate-response>"
  "flying_gripper/inflateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'inflate-response)))
  "Returns string type for a service object of type 'inflate-response"
  "flying_gripper/inflateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<inflate-response>)))
  "Returns md5sum for a message object of type '<inflate-response>"
  "c789a3ecb85f6b02890d8c7045e25eac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'inflate-response)))
  "Returns md5sum for a message object of type 'inflate-response"
  "c789a3ecb85f6b02890d8c7045e25eac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<inflate-response>)))
  "Returns full string definition for message of type '<inflate-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'inflate-response)))
  "Returns full string definition for message of type 'inflate-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <inflate-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <inflate-response>))
  "Converts a ROS message object to a list"
  (cl:list 'inflate-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'inflate)))
  'inflate-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'inflate)))
  'inflate-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'inflate)))
  "Returns string type for a service object of type '<inflate>"
  "flying_gripper/inflate")