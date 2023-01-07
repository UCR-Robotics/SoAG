;; Auto-generated. Do not edit!


(when (boundp 'flying_gripper::inflate)
  (if (not (find-package "FLYING_GRIPPER"))
    (make-package "FLYING_GRIPPER"))
  (shadow 'inflate (find-package "FLYING_GRIPPER")))
(unless (find-package "FLYING_GRIPPER::INFLATE")
  (make-package "FLYING_GRIPPER::INFLATE"))
(unless (find-package "FLYING_GRIPPER::INFLATEREQUEST")
  (make-package "FLYING_GRIPPER::INFLATEREQUEST"))
(unless (find-package "FLYING_GRIPPER::INFLATERESPONSE")
  (make-package "FLYING_GRIPPER::INFLATERESPONSE"))

(in-package "ROS")





(defclass flying_gripper::inflateRequest
  :super ros::object
  :slots (_dt ))

(defmethod flying_gripper::inflateRequest
  (:init
   (&key
    ((:dt __dt) 0.0)
    )
   (send-super :init)
   (setq _dt (float __dt))
   self)
  (:dt
   (&optional __dt)
   (if __dt (setq _dt __dt)) _dt)
  (:serialization-length
   ()
   (+
    ;; float64 _dt
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _dt
       (sys::poke _dt (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _dt
     (setq _dt (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass flying_gripper::inflateResponse
  :super ros::object
  :slots (_success ))

(defmethod flying_gripper::inflateResponse
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

(defclass flying_gripper::inflate
  :super ros::object
  :slots ())

(setf (get flying_gripper::inflate :md5sum-) "c789a3ecb85f6b02890d8c7045e25eac")
(setf (get flying_gripper::inflate :datatype-) "flying_gripper/inflate")
(setf (get flying_gripper::inflate :request) flying_gripper::inflateRequest)
(setf (get flying_gripper::inflate :response) flying_gripper::inflateResponse)

(defmethod flying_gripper::inflateRequest
  (:response () (instance flying_gripper::inflateResponse :init)))

(setf (get flying_gripper::inflateRequest :md5sum-) "c789a3ecb85f6b02890d8c7045e25eac")
(setf (get flying_gripper::inflateRequest :datatype-) "flying_gripper/inflateRequest")
(setf (get flying_gripper::inflateRequest :definition-)
      "float64 dt
---
bool success
")

(setf (get flying_gripper::inflateResponse :md5sum-) "c789a3ecb85f6b02890d8c7045e25eac")
(setf (get flying_gripper::inflateResponse :datatype-) "flying_gripper/inflateResponse")
(setf (get flying_gripper::inflateResponse :definition-)
      "float64 dt
---
bool success
")



(provide :flying_gripper/inflate "c789a3ecb85f6b02890d8c7045e25eac")


