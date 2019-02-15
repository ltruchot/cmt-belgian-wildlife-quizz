module FHelper exposing (ifThen, when)


ifThen : Bool -> (a -> a) -> a -> a
ifThen b f a =
    if b then
        f a

    else
        a


when : (a -> Bool) -> (a -> a) -> a -> a
when pred whenTrueFn a =
    if pred a then
        whenTrueFn a

    else
        a
