; Auto-generated. Do not edit!


(cl:in-package ig_action_msgs-msg)


;//! \htmlinclude InstructionGraphGoal.msg.html

(cl:defclass <InstructionGraphGoal> (roslisp-msg-protocol:ros-message)
  ((order
    :reader order
    :initarg :order
    :type cl:string
    :initform ""))
)

(cl:defclass InstructionGraphGoal (<InstructionGraphGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InstructionGraphGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InstructionGraphGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ig_action_msgs-msg:<InstructionGraphGoal> is deprecated: use ig_action_msgs-msg:InstructionGraphGoal instead.")))

(cl:ensure-generic-function 'order-val :lambda-list '(m))
(cl:defmethod order-val ((m <InstructionGraphGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ig_action_msgs-msg:order-val is deprecated.  Use ig_action_msgs-msg:order instead.")
  (order m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InstructionGraphGoal>) ostream)
  "Serializes a message object of type '<InstructionGraphGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'order))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'order))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InstructionGraphGoal>) istream)
  "Deserializes a message object of type '<InstructionGraphGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'order) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'order) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InstructionGraphGoal>)))
  "Returns string type for a message object of type '<InstructionGraphGoal>"
  "ig_action_msgs/InstructionGraphGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InstructionGraphGoal)))
  "Returns string type for a message object of type 'InstructionGraphGoal"
  "ig_action_msgs/InstructionGraphGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InstructionGraphGoal>)))
  "Returns md5sum for a message object of type '<InstructionGraphGoal>"
  "9db207449ae86824d9e60bd906ef30e7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InstructionGraphGoal)))
  "Returns md5sum for a message object of type 'InstructionGraphGoal"
  "9db207449ae86824d9e60bd906ef30e7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InstructionGraphGoal>)))
  "Returns full string definition for message of type '<InstructionGraphGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%string order~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InstructionGraphGoal)))
  "Returns full string definition for message of type 'InstructionGraphGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%string order~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InstructionGraphGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'order))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InstructionGraphGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'InstructionGraphGoal
    (cl:cons ':order (order msg))
))
