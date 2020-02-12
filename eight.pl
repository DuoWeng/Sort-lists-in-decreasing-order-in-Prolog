mergeList([],[],L,L).
mergeList([X|T],[],List,L):-mergeList(T,[],[X|List],L).
mergeList([],[Y|T],List,L):-mergeList([],T,[Y|List],L).
mergeList([X|List1],[Y|List2],List3,List4):-X<Y,!,mergeList(List1,[Y|List2],[X|List3],List4).
mergeList([X|List1],[Y|List2],List3,List4):-mergeList([X|List1],List2,[Y|List3],List4).

merge(List1,List2,Y):-mergeList(List1,List2,[],Y).
