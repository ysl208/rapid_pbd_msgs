string name          # name of problem
string domain        # name of domain to use
rapid_pbd_msgs/PDDLObject[] objects # objects with names

string[] initial     # initial condition
rapid_pbd_msgs/PDDLPredicate[] inits

string goal          # goal conjunction
rapid_pbd_msgs/PDDLPredicate[] goals
string metric        # metric
