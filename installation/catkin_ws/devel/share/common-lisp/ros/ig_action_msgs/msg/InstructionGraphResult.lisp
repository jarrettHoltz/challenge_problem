; Auto-generated. Do not edit!


(cl:in-package ig_action_msgs-msg)


;//! \htmlinclude InstructionGraphResult.msg.html

(cl:defclass <InstructionGraphResult> (roslisp-msg-protocol:ros-message)
  ((sequence
    :reader sequence
    :initarg :sequence
    :type cl:string
    :initform ""))
)

(cl:defclass InstructionGraphResult (<InstructionGraphResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InstructionGraphResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InstructionGraphResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ig_action_msgs-msg:<InstructionGraphResult> is deprecated: use ig_action_msgs-msg:InstructionGraphResult instead.")))

(cl:ensure-generic-function 'sequence-val :lambda-list '(m))
(cl:defmethod sequence-val ((m <InstructionGraphResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ig_action_msgs-msg:sequence-val is deprecated.  Use ig_action_msgs-msg:sequence instead.")
  (sequence m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InstructionGraphResult>) ostream)
  "Serializes a message object of type '<InstructionGraphResult>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'sequence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'sequence))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InstructionGraphResult>) istream)
  "Deserializes a message object of type '<InstructionGraphResult>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sequence) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'sequence) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InstructionGraphResult>)))
  "Returns string type for a message object of type '<InstructionGraphResult>"
  "ig_action_msgs/InstructionGraphResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InstructionGraphResult)))
  "Returns string type for a message object of type 'InstructionGraphResult"
  "ig_action_msgs/InstructionGraphResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InstructionGraphResult>)))
  "Returns md5sum for a message object of type '<InstructionGraphResult>"
  "2810e4b1ee8df76ac8a9a36d5becb93c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InstructionGraphResult)))
  "Returns md5sum for a message object of type 'InstructionGraphResult"
  "2810e4b1ee8df76ac8a9a36d5becb93c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InstructionGraphResult>)))
  "Returns full string definition for message of type '<InstructionGraphResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%string sequence~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InstructionGraphResult)))
  "Returns full string definition for message of type 'InstructionGraphResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%string sequence~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InstructionGraphResult>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'sequence))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InstructionGraphResult>))
  "Converts a ROS message object to a list"
  (cl:list 'InstructionGraphResult
    (cl:cons ':sequence (sequence msg))
))
