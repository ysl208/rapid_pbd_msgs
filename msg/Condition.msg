## Set to true if this condition is relevant for this landmark
bool relevant

## Main landmark
Landmark landmark

## Object properties (bounding box size, color)
## variance (e.g. 0.075)
bool sizeRelevant
geometry_msgs/Vector3 sizeVariance
geometry_msgs/Vector3 surface_box_dims

## Absolute properties (position, orientation)
bool positionRelevant
geometry_msgs/Vector3 positionVariance
geometry_msgs/Point position

bool orientationRelevant
geometry_msgs/Vector3 orientationVariance
geometry_msgs/Quaternion orientation
geometry_msgs/Vector3 eulerAngles

## Relative landmark
Landmark reference
bool referenceRelevant

## This is used for describing the displacement vector from the landmark to a referenced landmark
## Based on the displacement vector, a spatial relation can be inferred
bool contDisplacementRelevant
geometry_msgs/Vector3 contDisplacementVariance
geometry_msgs/Vector3 contDisplacement

bool contOrientationRelevant
geometry_msgs/Vector3 contOrientationVariance
geometry_msgs/Quaternion contOrientation
# geometry_msgs/Vector3 contEulerAngles

bool discDisplacementRelevant
string spatial_relation