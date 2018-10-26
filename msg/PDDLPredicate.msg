# Type for AI planning

string IS_CLEAR = clear
string IS_ON = on
string IS_STACKABLE = stackable on

string name

## All predicates have at least one argument
rapid_pbd_msgs/PDDLObject arg1

## If predicate == IS_ON or predicate == IS_STACKABLE there is a 2nd argument
## Used for objects that can be stacked on another object or on a position
## All objects can be stacked on a position
# arg1 must be type == OBJECT
rapid_pbd_msgs/PDDLObject arg2 # must be type == TABLE_ENTITY

## Used to negate an existing predicate
bool negate
