// Auto-generated. Do not edit!

// (in-package ig_action_msgs.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------

class InstructionGraphFeedback {
  constructor() {
    this.sequence = '';
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type InstructionGraphFeedback
    // Serialize message field [sequence]
    bufferInfo = _serializer.string(obj.sequence, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type InstructionGraphFeedback
    let tmp;
    let len;
    let data = new InstructionGraphFeedback();
    // Deserialize message field [sequence]
    tmp = _deserializer.string(buffer);
    data.sequence = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'ig_action_msgs/InstructionGraphFeedback';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2810e4b1ee8df76ac8a9a36d5becb93c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #feedback
    string sequence
    
    `;
  }

};

module.exports = InstructionGraphFeedback;
