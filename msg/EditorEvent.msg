# Specifies an action taken by the PbD editor.

# Used to update detailed fields of a program, not the structure itself
string UPDATE = update program
string DELETE = delete program

string SAVE_BAG_FILE = save bag file
string LOG_ACTIVITY = log activity

# Used to update the PDDL domain
string SAVE_ON_EXIT = save on exit program
string SELECT_PDDL_DOMAIN = select pddl domain
string DELETE_PDDL_DOMAIN = delete pddl domain
string UPDATE_PDDL_DOMAIN = update pddl domain
string ASSIGN_SURFACE_OBJECTS = assign surface objects
# PDDL actions
string DETECT_ACTION_CONDITIONS = detect action conditions
string ADD_PDDL_ACTION = add pddl action
string COPY_PDDL_ACTION = copy pddl action
string GET_PREPROGRAMMED_ACTION = get preprogrammed action
string UPDATE_PDDL_ACTION = update pddl action
string DELETE_PDDL_ACTION = delete pddl action
# PDDL problems
string DETECT_WORLD_STATE = detect world state
string ADD_PDDL_PROBLEM = add pddl problem
string COPY_PDDL_PROBLEM = copy pddl problem
string UPDATE_PDDL_PROBLEM = update pddl problem
string DELETE_PDDL_PROBLEM = delete pddl problem
string SOLVE_PDDL_PROBLEM = solve pddl problem
string RUN_PDDL_PLAN = run pddl plan
string REFRESH_PROBLEM = refresh problem

# Checking the program conditions
string GENERATE_CONDITIONS = generate conditions
string UPDATE_CONDITIONS = update conditions
string VIEW_CONDITIONS = view conditions

# Infering the program specification
string INFER_SPECIFICATION = infer specification
string VIEW_SPECIFICATION = view specification
string SELECT_SPECIFICATION = select specification

# Manipulating the program structure
string ADD_SENSE_STEPS = add sense steps
string ADD_STEP = add step
string DELETE_STEP = delete step
string ADD_ACTION = add action
string DELETE_ACTION = delete action

# Updating the visualization for a program
string VIEW_STEP = view step

# Robot actions to execute
string DETECT_SURFACE_OBJECTS = detect surface objects
string GET_JOINT_VALUES = get joint values
string GET_POSE = get pose

string type

# If type is UPDATE, all fields of program_info and program are needed.
# If type is DELETE, only program_info.db_id is needed.
# If type is GENERATE_CONDITIONS, program_info.db_id, step_num, action_num, landmark needed.
# If type is VIEW_CONDITIONS, program_info.db_id, step_num, action_num needed.
# If type is UPDATE_CONDITIONS, program_info.db_id, step_num, action_num, action needed.
# If type is INFER_SPECIFICATION, program_info.db_id, step_num, action_num, action needed.
# If type is VIEW_SPECIFICATION, program_info.db_id, step_num, action_num, spec needed.

# If type is ADD_STEP, only program_info.db_id is needed.
# If type is DELETE_STEP, program_info.db_id and step_num are needed
# If type is ADD_ACTION, program_info.db_id, step_num, and action are needed
# If type is DELETE_ACTION, program_info.db_id, step_num, and action_num are needed.
# If type is VIEW, then program_info.db_id and step_num are needed.
# If type is DETECT_SURFACE_OBJECTS, program_info.db_id, step_num, and action_num are needed.
# If type is GET_JOINT_VALUES, program_info.db_id, step_num, action_num, and action.actuator_group are needed.
# If type is GET_POSE, program_info.db_id, step_num, action_num, action.actuator_group, and action.landmark are needed.
rapid_pbd_msgs/ProgramInfo program_info
rapid_pbd_msgs/Program program
int32 step_num # 0-indexed step number
rapid_pbd_msgs/Action action
int32 action_num # 0-indexed action number
rapid_pbd_msgs/Landmark landmark # main landmark for condition check
rapid_pbd_msgs/Specification spec # view specification

# PDDL 
string domain_name
string domain_id
rapid_pbd_msgs/PDDLDomain pddl_domain
string action_name
rapid_pbd_msgs/PDDLAction pddl_action # only for update pddl action
string state_name # precondition or effect
string problem_name
rapid_pbd_msgs/PDDLProblem pddl_problem # only for update pddl problem
string planner