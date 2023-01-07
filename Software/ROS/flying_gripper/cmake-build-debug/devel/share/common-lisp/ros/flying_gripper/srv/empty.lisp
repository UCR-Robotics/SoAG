; Auto-generated. Do not edit!


(cl:in-package flying_gripper-srv)


;//! \htmlinclude empty-request.msg.html

(cl:defclass <empty-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass empty-request (<empty-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <empty-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'empty-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name flying_gripper-srv:<empty-request> is deprecated: use flying_gripper-srv:empty-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <empty-request>) ostream)
  "Serializes a message object of type '<empty-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <empty-request>) istream)
  "Deserializes a message object of type '<empty-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<empty-request>)))
  "Returns string type for a service object of type '<empty-request>"
  "flying_gripper/emptyRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'empty-request)))
  "Returns string type for a service object of type 'empty-request"
  "flying_gripper/emptyRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<empty-request>)))
  "Returns md5sum for a message object of type '<empty-request>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'empty-request)))
  "Returns md5sum for a message object of type 'empty-request"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<empty-request>)))
  "Returns full string definition for message of type '<empty-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'empty-request)))
  "Returns full string definition for message of type 'empty-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <empty-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <empty-request>))
  "Converts a ROS message object to a list"
  (cl:list 'empty-request
))
;//! \htmlinclude empty-response.msg.html

(cl:defclass <empty-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass empty-response (<empty-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <empty-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'empty-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name flying_gripper-srv:<empty-response> is deprecated: use flying_gripper-srv:empty-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <empty-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader flying_gripper-srv:success-val is deprecated.  Use flying_gripper-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <empty-response>) ostream)
  "Serializes a message object of type '<empty-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <empty-response>) istream)
  "Deserializes a message object of type '<empty-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<empty-response>)))
  "Returns string type for a service object of type '<empty-response>"
  "flying_gripper/emptyResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'empty-response)))
  "Returns string type for a service object of type 'empty-response"
  "flying_gripper/emptyResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<empty-response>)))
  "Returns md5sum for a message object of type '<empty-response>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'empty-response)))
  "Returns md5sum for a message object of type 'empty-response"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<empty-response>)))
  "Returns full string definition for message of type '<empty-response>"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'empty-response)))
  "Returns full string definition for message of type 'empty-response"
  (cl:format cl:nil "bool success~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <empty-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <empty-response>))
  "Converts a ROS message object to a list"
  (cl:list 'empty-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'empty)))
  'empty-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'empty)))
  'empty-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'empty)))
  "Returns string type for a service object of type '<empty>"
  "flying_gripper/empty")