// Auto-generated. Do not edit!

// (in-package piksi_rtk_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SamplePositionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.num_desired_fixes = null;
      this.file = null;
      this.set_enu = null;
      this.offset_z = null;
    }
    else {
      if (initObj.hasOwnProperty('num_desired_fixes')) {
        this.num_desired_fixes = initObj.num_desired_fixes
      }
      else {
        this.num_desired_fixes = 0;
      }
      if (initObj.hasOwnProperty('file')) {
        this.file = initObj.file
      }
      else {
        this.file = '';
      }
      if (initObj.hasOwnProperty('set_enu')) {
        this.set_enu = initObj.set_enu
      }
      else {
        this.set_enu = false;
      }
      if (initObj.hasOwnProperty('offset_z')) {
        this.offset_z = initObj.offset_z
      }
      else {
        this.offset_z = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SamplePositionRequest
    // Serialize message field [num_desired_fixes]
    bufferOffset = _serializer.uint32(obj.num_desired_fixes, buffer, bufferOffset);
    // Serialize message field [file]
    bufferOffset = _serializer.string(obj.file, buffer, bufferOffset);
    // Serialize message field [set_enu]
    bufferOffset = _serializer.bool(obj.set_enu, buffer, bufferOffset);
    // Serialize message field [offset_z]
    bufferOffset = _serializer.float64(obj.offset_z, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SamplePositionRequest
    let len;
    let data = new SamplePositionRequest(null);
    // Deserialize message field [num_desired_fixes]
    data.num_desired_fixes = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [file]
    data.file = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [set_enu]
    data.set_enu = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [offset_z]
    data.offset_z = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.file);
    return length + 17;
  }

  static datatype() {
    // Returns string type for a service object
    return 'piksi_rtk_msgs/SamplePositionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd61ca547d7fe6fd48751a949f576f865';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 num_desired_fixes
    string file
    bool set_enu
    float64 offset_z # Height of survey pole that will be subtracted from survey.
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SamplePositionRequest(null);
    if (msg.num_desired_fixes !== undefined) {
      resolved.num_desired_fixes = msg.num_desired_fixes;
    }
    else {
      resolved.num_desired_fixes = 0
    }

    if (msg.file !== undefined) {
      resolved.file = msg.file;
    }
    else {
      resolved.file = ''
    }

    if (msg.set_enu !== undefined) {
      resolved.set_enu = msg.set_enu;
    }
    else {
      resolved.set_enu = false
    }

    if (msg.offset_z !== undefined) {
      resolved.offset_z = msg.offset_z;
    }
    else {
      resolved.offset_z = 0.0
    }

    return resolved;
    }
};

class SamplePositionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SamplePositionResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SamplePositionResponse
    let len;
    let data = new SamplePositionResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'piksi_rtk_msgs/SamplePositionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SamplePositionResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: SamplePositionRequest,
  Response: SamplePositionResponse,
  md5sum() { return 'd61ca547d7fe6fd48751a949f576f865'; },
  datatype() { return 'piksi_rtk_msgs/SamplePosition'; }
};
