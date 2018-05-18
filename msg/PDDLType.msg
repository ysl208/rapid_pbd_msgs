# Type for AI planning
# Grippers
string SUCTION_GRIPPER = suction gripper
string CLAW_GRIPPER = claw gripper

# Table Entities
string TABLE_ENTITY = entities on the table
# Objects (subset of TABLE_ENTITY)
string OBJECT = object
string CUBE_OBJECT = cube
string TOWER_OBJECT = tower
string PLATE_OBJECT = plate
string RECTANGLE_OBJECT = rectangle

# Locations (subset of TABLE_ENTITY)
string POSITION = position
string A_POSITION = position A
string B_POSITION = position B
string C_POSITION = position C
string D_POSITION = position D

string type

## If it is a gripper, then the arm needs to be specified
string LEFT_ARM = left arm
string RIGHT_ARM = right arm
string gripper_arm

## If it is an object, then the ratio of its dimensions should be defined
geometry_msgs/Vector3 unit_obj_dims # object dimensions along x,y,z-axes

## If it is a position, then its location needs to be defined
## together with the size of the location
geometry_msgs/Pose pose # location center point
geometry_msgs/Vector3 dimensions # location dimensions along x,y,z-axes
