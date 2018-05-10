# Action model for AI planning
string name

# Parameters are variables on which the action model operates
rapid_pbd_msgs/Type[] params

# In rapid_pbd: 
# Preconditions/Effects are observed world states at start/end of the Program

# Preconditions - conditions that must be satisfied before the action can be executed; 
#  - if none are specified, the action is always executable
rapid_pbd_msgs/Predicate[] preconditions 

# Effects - changes in the world state imposed by the action
rapid_pbd_msgs/Predicate[] effects