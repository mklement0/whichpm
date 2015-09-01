#
# This is a dummy module whose read permissions should be removed 
# to simulate a permissions problem.
# Therefore, the contents of this module is irrelevant.
#

package Data::Unreadable;

BEGIN {
    $VERSION = '6.666'; 
}              

1; # a module must return a truthy value when loaded
