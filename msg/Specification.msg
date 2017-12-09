# fixed parameters that are specific
string name
int32 row_num # a number between 1 and 100 (entire surface)
int32 col_num # a number between 1 and 100
geometry_msgs/Vector3 offset # x,y offset for every second row
bool flag1D

# fixed parameters that are initialized after the first object has been placed
rapid_pbd_msgs/Landmark landmark # first landmark

# parameters that are initialized after the specification has been chosen
float64 avg_dx # average object distance in x-axis
float64 avg_dy # average object distance in y-axis

# parameters that can be defined by the user
int32 obj_num