# Action model for AI planning
string name
string program_id

# Parameters are variables on which the action model operates
rapid_pbd_msgs/PDDLObject[] params

# In rapid_pbd: 
# Preconditions/Effects are observed world states at start/end of the Program

# Preconditions - conditions that must be satisfied before the action can be executed; 
#  - if none are specified, the action is always executable
rapid_pbd_msgs/PDDLPredicate[] preconditions 

# Effects - changes in the world state imposed by the action
rapid_pbd_msgs/PDDLPredicate[] effects
