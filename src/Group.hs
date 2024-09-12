module Group (
    Group,
    gadd,
    gunit,
    ginv,
    gIsAssociative,
    gExistUnit,
    gExistInv
) where

class Group g where
    gadd :: g -> g -> g
    gunit :: g
    ginv :: g -> g

gIsAssociative :: (Group g, Eq g) => g -> g -> g -> Bool
gIsAssociative a b c = a `gadd` (b `gadd` c) == (a `gadd` b) `gadd` c

gExistUnit :: (Group g, Eq g) => g -> Bool
gExistUnit a = a `gadd` gunit == a && gunit `gadd` a == a

gExistInv :: (Group g, Eq g) => g -> Bool
gExistInv a = a `gadd` (ginv a) == gunit && (ginv a) `gadd` a == gunit


