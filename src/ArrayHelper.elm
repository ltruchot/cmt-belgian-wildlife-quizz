module ArrayHelper exposing (provideRandomElt, provideShuffled, removeByIndex, sliceByIndex)

import Array
import Random
import Random.Array exposing (shuffle)


provideRandomElt : (Int -> msg) -> Array.Array elt -> Cmd msg
provideRandomElt msg arr =
    Random.generate msg (Random.int 0 (Array.length arr - 1))


sliceByIndex : Array.Array elt -> Int -> ( Maybe elt, Array.Array elt )
sliceByIndex arr idx =
    ( Array.get idx arr
    , removeByIndex arr idx
    )


removeByIndex : Array.Array elt -> Int -> Array.Array elt
removeByIndex arr idx =
    Array.append (Array.slice 0 idx arr) (Array.slice (idx + 1) (Array.length arr) arr)


provideShuffled : (Array.Array elt -> msg) -> Array.Array elt -> Cmd msg
provideShuffled msg arr =
    Random.generate msg (shuffle arr)
