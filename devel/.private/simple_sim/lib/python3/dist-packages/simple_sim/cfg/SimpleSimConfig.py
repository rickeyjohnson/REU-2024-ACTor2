## *********************************************************
##
## File autogenerated for the simple_sim package
## by the dynamic_reconfigure package.
## Please do not edit.
##
## ********************************************************/

from dynamic_reconfigure.encoding import extract_params

inf = float('inf')

config_description = {'name': 'Default', 'type': '', 'state': True, 'cstate': 'true', 'id': 0, 'parent': 0, 'parameters': [{'name': 'camera_z', 'type': 'double', 'default': 0.5, 'level': 0, 'description': 'Camera Height', 'min': 0.0, 'max': 2.0, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}, {'name': 'camera_phi', 'type': 'double', 'default': 60.0, 'level': 0, 'description': 'Camera Rot Deg', 'min': 0.0, 'max': 90.0, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}, {'name': 'camera_f', 'type': 'double', 'default': 70.0, 'level': 0, 'description': 'Focal Len', 'min': 0.0, 'max': 200.0, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}, {'name': 'camera_border', 'type': 'bool', 'default': False, 'level': 0, 'description': 'Cam Border On', 'min': False, 'max': True, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'bool', 'cconsttype': 'const bool'}, {'name': 'lidar_active', 'type': 'bool', 'default': True, 'level': 0, 'description': 'Lidar On', 'min': False, 'max': True, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'bool', 'cconsttype': 'const bool'}, {'name': 'lidar_max_dst', 'type': 'double', 'default': 3.5, 'level': 0, 'description': 'Lidar Max Dist', 'min': 0.0, 'max': 10.0, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'double', 'cconsttype': 'const double'}, {'name': 'lidar_mkr_size', 'type': 'int', 'default': 7, 'level': 0, 'description': 'Lidar Mkr Size', 'min': 0, 'max': 20, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'exterior_walls', 'type': 'bool', 'default': False, 'level': 0, 'description': 'Exterior Walls', 'min': False, 'max': True, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'bool', 'cconsttype': 'const bool'}, {'name': 'obstructions', 'type': 'bool', 'default': True, 'level': 0, 'description': 'Obstructions', 'min': False, 'max': True, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'bool', 'cconsttype': 'const bool'}, {'name': 'collision_type', 'type': 'int', 'default': 0, 'level': 0, 'description': 'Collision', 'min': 0, 'max': 2, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': "{'enum': [{'name': 'None', 'type': 'int', 'value': 0, 'srcline': 27, 'srcfile': '/home/reu-actor/actor_ws/src/PythonWorkshop/simple_sim/cfg/SimpleSim.cfg', 'description': 'No collision check', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'Soft', 'type': 'int', 'value': 1, 'srcline': 28, 'srcfile': '/home/reu-actor/actor_ws/src/PythonWorkshop/simple_sim/cfg/SimpleSim.cfg', 'description': 'Soft collision check', 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'Hard', 'type': 'int', 'value': 2, 'srcline': 29, 'srcfile': '/home/reu-actor/actor_ws/src/PythonWorkshop/simple_sim/cfg/SimpleSim.cfg', 'description': 'Hard collision check', 'ctype': 'int', 'cconsttype': 'const int'}], 'enum_description': 'An enum to set collision'}", 'ctype': 'int', 'cconsttype': 'const int'}, {'name': 'initialize', 'type': 'bool', 'default': False, 'level': 0, 'description': 'Initialize', 'min': False, 'max': True, 'srcline': 291, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'edit_method': '', 'ctype': 'bool', 'cconsttype': 'const bool'}], 'groups': [], 'srcline': 246, 'srcfile': '/opt/ros/noetic/lib/python3/dist-packages/dynamic_reconfigure/parameter_generator_catkin.py', 'class': 'DEFAULT', 'parentclass': '', 'parentname': 'Default', 'field': 'default', 'upper': 'DEFAULT', 'lower': 'groups'}

min = {}
max = {}
defaults = {}
level = {}
type = {}
all_level = 0

#def extract_params(config):
#    params = []
#    params.extend(config['parameters'])
#    for group in config['groups']:
#        params.extend(extract_params(group))
#    return params

for param in extract_params(config_description):
    min[param['name']] = param['min']
    max[param['name']] = param['max']
    defaults[param['name']] = param['default']
    level[param['name']] = param['level']
    type[param['name']] = param['type']
    all_level = all_level | param['level']

SimpleSim_None = 0
SimpleSim_Soft = 1
SimpleSim_Hard = 2
