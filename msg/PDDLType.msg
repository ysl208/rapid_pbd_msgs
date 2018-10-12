# Type for AI planning
# Grippers
string SUCTION_GRIPPER = suction
string CLAW_GRIPPER = claw

# Table Entities
string TABLE_ENTITY = table
# Objects (subset of TABLE_ENTITY)
string OBJECT = object
string CUBE_OBJECT = cube
string PILLAR_OBJECT = pillar
string BASE_OBJECT = base
string ROOF_OBJECT = roof

# Locations (subset of TABLE_ENTITY)
string POSITION = position
string A_POSITION = posA
string B_POSITION = posB
string C_POSITION = posC
string D_POSITION = posD

string name
string parent

## If it is a gripper, then the arm needs to be specified
string LEFT_ARM = left arm
string RIGHT_ARM = right arm
string gripper_arm

## If it is an object, then the ratio of its dimensions should be defined
geometry_msgs/Vector3 dimensions # dimensions along x,y,z-axes

## If it is a position, then its location needs to be defined
## together with the size of the location
geometry_msgs/Pose pose # location center point

