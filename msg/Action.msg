# Type of the Action
## The first set of actions are actuations that move some part of the robot.
# Open or close one of the grippers
string ACTUATE_GRIPPER = actuate gripper
# Move the head, torso, or arm
string MOVE_TO_JOINT_GOAL = move to joint goal
# Move the arm
string MOVE_TO_CARTESIAN_GOAL = move to cartesian goal

## The second set of actions are perception actions that update the world representation.
# Find tabletop objects
string DETECT_TABLETOP_OBJECTS = detect tabletop objects
# Find a custom landmark
string FIND_CUSTOM_LANDMARK = find custom landmark

## The third set of actions are checks on the world conditions
# Check world for conditions
string CHECK_CONDITIONS = check world conditions

## The fourth set of actions are inferences on the program specification
string INFER_SPECIFICATION = infer specification

string type

# If this is an actuation, this specifies what is being moved.
# Used for robots that only have one gripper
string GRIPPER = gripper
string LEFT_GRIPPER = left gripper
string RIGHT_GRIPPER = right gripper
string HEAD = head
string TORSO = torso
string ARM = arm
string LEFT_ARM = left arm
string RIGHT_ARM = right arm
string actuator_group

# Acutation specifications
## If type == ACTUATE_GRIPPER
string SUCTION_GRIPPER = suction gripper
control_msgs/GripperCommand gripper_command

## If type == MOVE_TO_JOINT_GOAL
## Used to move the head, torso, arm, or a custom set of joints
## If the type is MOVE_TO_CARTESIAN_GOAL, this may also specify a seed set of joint angles.
trajectory_msgs/JointTrajectory joint_trajectory

## If type == MOVE_TO_CARTESIAN_GOAL
## This is used for pointing the head or moving the end-effector
geometry_msgs/Pose pose
Landmark landmark # A landmark that acts as the parent frame of the pose

## Specifies the kind of control to use for actuating the arm
ControlStrategy control_strategy

# Perception specifications
## If type == FIND_CUSTOM_LANDMARK
string custom_landmark_name

# If type == CHECK_CONDITIONS
rapid_pbd_msgs/Condition condition # Landmark condition to check.

# If type == INFER_SPECIFICATION