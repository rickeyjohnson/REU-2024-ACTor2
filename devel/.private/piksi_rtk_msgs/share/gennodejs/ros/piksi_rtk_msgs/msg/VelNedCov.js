// Auto-generated. Do not edit!

// (in-package piksi_rtk_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class VelNedCov {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tow = null;
      this.n = null;
      this.e = null;
      this.d = null;
      this.cov_n_n = null;
      this.cov_n_e = null;
      this.cov_n_d = null;
      this.cov_e_e = null;
      this.cov_e_d = null;
      this.cov_d_d = null;
      this.n_sats = null;
      this.flags = null;
    }
    else {
      if (initObj.hasOwnProperty('tow')) {
        this.tow = initObj.tow
      }
      else {
        this.tow = 0;
      }
      if (initObj.hasOwnProperty('n')) {
        this.n = initObj.n
      }
      else {
        this.n = 0;
      }
      if (initObj.hasOwnProperty('e')) {
        this.e = initObj.e
      }
      else {
        this.e = 0;
      }
      if (initObj.hasOwnProperty('d')) {
        this.d = initObj.d
      }
      else {
        this.d = 0;
      }
      if (initObj.hasOwnProperty('cov_n_n')) {
        this.cov_n_n = initObj.cov_n_n
      }
      else {
        this.cov_n_n = 0.0;
      }
      if (initObj.hasOwnProperty('cov_n_e')) {
        this.cov_n_e = initObj.cov_n_e
      }
      else {
        this.cov_n_e = 0.0;
      }
      if (initObj.hasOwnProperty('cov_n_d')) {
        this.cov_n_d = initObj.cov_n_d
      }
      else {
        this.cov_n_d = 0.0;
      }
      if (initObj.hasOwnProperty('cov_e_e')) {
        this.cov_e_e = initObj.cov_e_e
      }
      else {
        this.cov_e_e = 0.0;
      }
      if (initObj.hasOwnProperty('cov_e_d')) {
        this.cov_e_d = initObj.cov_e_d
      }
      else {
        this.cov_e_d = 0.0;
      }
      if (initObj.hasOwnProperty('cov_d_d')) {
        this.cov_d_d = initObj.cov_d_d
      }
      else {
        this.cov_d_d = 0.0;
      }
      if (initObj.hasOwnProperty('n_sats')) {
        this.n_sats = initObj.n_sats
      }
      else {
        this.n_sats = 0;
      }
      if (initObj.hasOwnProperty('flags')) {
        this.flags = initObj.flags
      }
      else {
        this.flags = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VelNedCov
    // Serialize message field [tow]
    bufferOffset = _serializer.uint32(obj.tow, buffer, bufferOffset);
    // Serialize message field [n]
    bufferOffset = _serializer.int32(obj.n, buffer, bufferOffset);
    // Serialize message field [e]
    bufferOffset = _serializer.int32(obj.e, buffer, bufferOffset);
    // Serialize message field [d]
    bufferOffset = _serializer.int32(obj.d, buffer, bufferOffset);
    // Serialize message field [cov_n_n]
    bufferOffset = _serializer.float32(obj.cov_n_n, buffer, bufferOffset);
    // Serialize message field [cov_n_e]
    bufferOffset = _serializer.float32(obj.cov_n_e, buffer, bufferOffset);
    // Serialize message field [cov_n_d]
    bufferOffset = _serializer.float32(obj.cov_n_d, buffer, bufferOffset);
    // Serialize message field [cov_e_e]
    bufferOffset = _serializer.float32(obj.cov_e_e, buffer, bufferOffset);
    // Serialize message field [cov_e_d]
    bufferOffset = _serializer.float32(obj.cov_e_d, buffer, bufferOffset);
    // Serialize message field [cov_d_d]
    bufferOffset = _serializer.float32(obj.cov_d_d, buffer, bufferOffset);
    // Serialize message field [n_sats]
    bufferOffset = _serializer.uint8(obj.n_sats, buffer, bufferOffset);
    // Serialize message field [flags]
    bufferOffset = _serializer.uint8(obj.flags, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VelNedCov
    let len;
    let data = new VelNedCov(null);
    // Deserialize message field [tow]
    data.tow = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [n]
    data.n = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [e]
    data.e = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [d]
    data.d = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [cov_n_n]
    data.cov_n_n = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [cov_n_e]
    data.cov_n_e = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [cov_n_d]
    data.cov_n_d = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [cov_e_e]
    data.cov_e_e = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [cov_e_d]
    data.cov_e_d = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [cov_d_d]
    data.cov_d_d = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [n_sats]
    data.n_sats = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [flags]
    data.flags = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 42;
  }

  static datatype() {
    // Returns string type for a message object
    return 'piksi_rtk_msgs/VelNedCov';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '41352a41b21545af6ecd73799c33bb68';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message reports the velocity in local North East Down (NED) coordinates.
    # The NED coordinate system is defined as the local WGS84 tangent plane centered
    # at the current position. The full GPS time is given by the preceding MSG GPS
    # TIME with the matching time-of-week (tow). This message is similar to the MSG
    # VEL NED, but it includes the upper triangular portion of the 3x3 covariance
    # matrix.
    
    uint32 tow          # GPS Time of Week.
    int32 n             # Velocity North coordinate [mm/s].
    int32 e             # Velocity East coordinate [mm/s].
    int32 d             # Velocity Down coordinate [mm/s].
    float32 cov_n_n     # Estimated variance of northward measurement [m^2/s^2].
    float32 cov_n_e     # Covariance of northward and eastward measurement [m^2/s^2].
    float32 cov_n_d     # Covariance of northward and downward measurement [m^2/s^2].
    float32 cov_e_e     # Estimated variance of eastward measurement [m^2/s^2].
    float32 cov_e_d     # Covariance of eastward and downward measurement [m^2/s^2].
    float32 cov_d_d     # Estimated variance of downard measurement [m^2/s^2].
    uint8 n_sats        # Number of satellites used in solution.
    uint8 flags         # Status flags
    
    uint8 VEL_MODE_INVALID = 0
    uint8 VEL_MODE_MEAS_DOPPLER = 1
    uint8 VEL_MODE_DERIVED_DOPPLER = 2
    uint8 VEL_MODE_DEAD_RECKONING = 3
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VelNedCov(null);
    if (msg.tow !== undefined) {
      resolved.tow = msg.tow;
    }
    else {
      resolved.tow = 0
    }

    if (msg.n !== undefined) {
      resolved.n = msg.n;
    }
    else {
      resolved.n = 0
    }

    if (msg.e !== undefined) {
      resolved.e = msg.e;
    }
    else {
      resolved.e = 0
    }

    if (msg.d !== undefined) {
      resolved.d = msg.d;
    }
    else {
      resolved.d = 0
    }

    if (msg.cov_n_n !== undefined) {
      resolved.cov_n_n = msg.cov_n_n;
    }
    else {
      resolved.cov_n_n = 0.0
    }

    if (msg.cov_n_e !== undefined) {
      resolved.cov_n_e = msg.cov_n_e;
    }
    else {
      resolved.cov_n_e = 0.0
    }

    if (msg.cov_n_d !== undefined) {
      resolved.cov_n_d = msg.cov_n_d;
    }
    else {
      resolved.cov_n_d = 0.0
    }

    if (msg.cov_e_e !== undefined) {
      resolved.cov_e_e = msg.cov_e_e;
    }
    else {
      resolved.cov_e_e = 0.0
    }

    if (msg.cov_e_d !== undefined) {
      resolved.cov_e_d = msg.cov_e_d;
    }
    else {
      resolved.cov_e_d = 0.0
    }

    if (msg.cov_d_d !== undefined) {
      resolved.cov_d_d = msg.cov_d_d;
    }
    else {
      resolved.cov_d_d = 0.0
    }

    if (msg.n_sats !== undefined) {
      resolved.n_sats = msg.n_sats;
    }
    else {
      resolved.n_sats = 0
    }

    if (msg.flags !== undefined) {
      resolved.flags = msg.flags;
    }
    else {
      resolved.flags = 0
    }

    return resolved;
    }
};

// Constants for message
VelNedCov.Constants = {
  VEL_MODE_INVALID: 0,
  VEL_MODE_MEAS_DOPPLER: 1,
  VEL_MODE_DERIVED_DOPPLER: 2,
  VEL_MODE_DEAD_RECKONING: 3,
}

module.exports = VelNedCov;
