string name          # name of problem
string domain        # domain name
rapid_pbd_msgs/PDDLObject[] objects # objects with names

string[] initial     # initial condition in PDDL
rapid_pbd_msgs/PDDLPredicate[] initial_states
string scene_id
rapid_pbd_msgs/Surface surface # The surface found when detecting at this step.
rapid_pbd_msgs/Landmark[] landmarks

string goal          # goal conjunction in PDDL
rapid_pbd_msgs/PDDLPredicate[] goal_states

string generated_plan