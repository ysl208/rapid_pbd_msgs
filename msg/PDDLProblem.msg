string name          # name of problem
rapid_pbd_msgs/PDDLObject[] objects # objects with names

string[] initial     # initial condition in PDDL
rapid_pbd_msgs/PDDLPredicate[] initial_state

string goal          # goal conjunction in PDDL
rapid_pbd_msgs/PDDLPredicate[] goal_state
