;; Auto-generated. Do not edit!


(when (boundp 'flying_gripper::empty)
  (if (not (find-package "FLYING_GRIPPER"))
    (make-package "FLYING_GRIPPER"))
  (shadow 'empty (find-package "FLYING_GRIPPER")))
(unless (find-package "FLYING_GRIPPER::EMPTY")
  (make-package "FLYING_GRIPPER::EMPTY"))
(unless (find-package "FLYING_GRIPPER::EMPTYREQUEST")
  (make-package "FLYING_GRIPPER::EMPTYREQUEST"))
(unless (find-package "FLYING_GRIPPER::EMPTYRESPONSE")
  (make-package "FLYING_GRIPPER::EMPTYRESPONSE"))

(in-package "ROS")





(defclass flying_gripper::emptyRequest
  :super ros::object
  :slots ())

(defmethod flying_gripper::emptyRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass flying_gripper::emptyResponse
  :super ros::object
  :slots (_success ))

(defmethod flying_gripper::emptyResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass flying_gripper::empty
  :super ros::object
  :slots ())

(setf (get flying_gripper::empty :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get flying_gripper::empty :datatype-) "flying_gripper/empty")
(setf (get flying_gripper::empty :request) flying_gripper::emptyRequest)
(setf (get flying_gripper::empty :response) flying_gripper::emptyResponse)

(defmethod flying_gripper::emptyRequest
  (:response () (instance flying_gripper::emptyResponse :init)))

(setf (get flying_gripper::emptyRequest :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get flying_gripper::emptyRequest :datatype-) "flying_gripper/emptyRequest")
(setf (get flying_gripper::emptyRequest :definition-)
      "---
bool success
")

(setf (get flying_gripper::emptyResponse :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get flying_gripper::emptyResponse :datatype-) "flying_gripper/emptyResponse")
(setf (get flying_gripper::emptyResponse :definition-)
      "---
bool success
")



(provide :flying_gripper/empty "358e233cde0c8a8bcfea4ce193f8fc15")


