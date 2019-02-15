module ArrayHelper exposing (provideRandomElt, provideShuffled, removeByIndex, sliceByIndex)

import Array exposing (Array)
import Random
import Random.Array exposing (shuffle)


getString : Int -> Array String -> String
getString i a =
    Maybe.withDefault "" (Array.get i a)


sliceByIndex : Array elt -> Int -> ( Maybe elt, Array elt )
sliceByIndex arr idx =
    ( Array.get idx arr
    , removeByIndex arr idx
    )


removeByIndex : Array elt -> Int -> Array elt
removeByIndex arr idx =
    Array.append (Array.slice 0 idx arr) (Array.slice (idx + 1) (Array.length arr) arr)


provideRandomElt : (Int -> msg) -> Array elt -> Cmd msg
provideRandomElt msg arr =
    Random.generate msg (Random.int 0 (Array.length arr - 1))


provideShuffled : (Array elt -> msg) -> Array elt -> Cmd msg
provideShuffled msg arr =
    Random.generate msg (shuffle arr)
