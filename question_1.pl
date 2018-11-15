%Question 1
isElementInList(El, [El|_]).
isElementInList(El,[_|Tail]):-isElementInList(El,Tail).


%Question 2
mergeLists([], List2, List2).
mergeLists([Head|Tail],List2,[Head|Merged]):-
    mergeLists(Tail,List2,Merged).

%Question 3
reverseList([], []).
reverseList([Head|Tail], ReversedList):-
    mergeLists(List1, [Head], ReversedList),
    reverseList(Tail, List1).

%Question 4
insertElementIntoListEnd(El, List, NewList):-
    mergeLists(List, [El], NewList).
