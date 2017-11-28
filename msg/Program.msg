string name # The name of the program.
Step[] steps # The sequence of steps to execute in this program.

# The joint state when the program was created.
# This is used only for visualization purposes, not for specifying the program.
# It allows the interface to render a preview of the robot state for each step.
sensor_msgs/JointState start_joint_state

# Program specification scores
rapid_pbd_msgs/Specification[] specs
std_msgs/Float64MultiArray posteriors