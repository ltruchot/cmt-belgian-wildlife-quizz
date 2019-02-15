module StringHelper exposing (interpolate)

import Debug


interpolate : String -> List ( String, String ) -> String
interpolate originalStr replacementList =
    List.foldl
        replaceTemplate
        originalStr
        replacementList

replaceTemplate : (String, String) -> String -> String
replaceTemplate toReplace str  =
  String.replace
    ("${" ++ (Tuple.first toReplace) ++ "}")
    (Tuple.second toReplace)
    str
