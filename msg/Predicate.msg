# Type for AI planning

string IS_CLEAR = top is clear
string IS_ON = object is on table entity
string IS_STACKABLE = object is stackable on
string NOT = not

string predicate

## If predicate == IS_CLEAR
## This condition is used to check if something can be placed on top
rapid_pbd_msgs/Type type # must be type == TABLE_ENTITY

## If predicate == IS_ON
## Used for objects that can be stacked on another object or on a position
rapid_pbd_msgs/Type is_on1 # must be type == OBJECT
rapid_pbd_msgs/Type is_on2 # must be type == TABLE_ENTITY

## If predicate == IS_STACKABLE
## Used to define if objects can be stacked on another object 
## All objects can be stacked on a position
rapid_pbd_msgs/Type stackable1 # must be type == OBJECT
rapid_pbd_msgs/Type stackable2 # must be type == TABLE_ENTITY

## If predicate == NOT
## Used to negate an existing predicate
rapid_pbd_msgs/Predicate predicate2