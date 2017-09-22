## Set to true if this no failures occurred
bool passed

## Absolute properties (position, orientation)
bool mainFound # found main landmark with matching size
bool posMatched
bool oriMatched

## This is used for describing the displacement vector from the landmark to a referenced landmark
## Based on the displacement vector, a spatial relation can be inferred
bool referenceFound # found reference object
bool contDisMatched
bool contOriMatched

string db_id
int32 step_id
int32 action_num
string error