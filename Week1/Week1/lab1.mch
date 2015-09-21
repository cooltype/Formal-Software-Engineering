/* lab1
 * Author: Louise
 * Creation date: 21/09/2015
 */
MACHINE
    lab1 
   
VARIABLES numset
CONSTANTS max_val
PROPERTIES max_val = 99999
INVARIANT numset <:  NAT1
INITIALISATION numset := {}
OPERATIONS
    enter(new) =
    PRE
        new :  NAT & new <= max_val
    THEN
        numset := numset \/ {new}
    END;

    mx <-- maximum =
    PRE
        numset /={}
    THEN
        mx := max(numset)
    END;

    mn <-- minimum =
    PRE
        numset /={}
    THEN
        mn := min(numset)
    END;

    remove(new) =
    PRE
        new :  NAT
    THEN
        numset := numset - {new}
    END
END


