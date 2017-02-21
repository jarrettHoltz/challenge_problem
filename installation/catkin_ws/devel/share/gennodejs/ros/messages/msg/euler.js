// Auto-generated. Do not edit!

// (in-package messages.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class euler {
  constructor() {
    this.header = new std_msgs.msg.Header();
    this.roll = 0.0;
    this.pitch = 0.0;
    this.yaw = 0.0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type euler
    // Serialize message field [header]
    bufferInfo = std_msgs.msg.Header.serialize(obj.header, bufferInfo);
    // Serialize message field [roll]
    bufferInfo = _serializer.float64(obj.roll, bufferInfo);
    // Serialize message field [pitch]
    bufferInfo = _serializer.float64(obj.pitch, bufferInfo);
    // Serialize message field [yaw]
    bufferInfo = _serializer.float64(obj.yaw, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type euler
    let tmp;
    let len;
    let data = new euler();
    // Deserialize message field [header]
    tmp = std_msgs.msg.Header.deserialize(buffer);
    data.header = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [roll]
    tmp = _deserializer.float64(buffer);
    data.roll = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [pitch]
    tmp = _deserializer.float64(buffer);
    data.pitch = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [yaw]
    tmp = _deserializer.float64(buffer);
    data.yaw = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'messages/euler';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8061e110314ddf08ca1dfbc48d314df8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    float64 roll
    float64 pitch
    float64 yaw
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    `;
  }

};

module.exports = euler;
