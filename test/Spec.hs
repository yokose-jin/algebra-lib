import Test.QuickCheck
import Group

instance Group Int where
    gadd = (+)
    gunit = 0
    ginv = ((-1)*)

testAssociate :: IO ()
testAssociate = let gIsAssociative' = gIsAssociative :: Int -> Int -> Int -> Bool
                    in quickCheck gIsAssociative'

testExistUnit :: IO ()
testExistUnit = let gExistUnit' = gExistUnit :: Int -> Bool
                    in quickCheck gExistUnit'

testExistInv :: IO ()
testExistInv  = let gExistInv' = gExistInv :: Int -> Bool
                    in quickCheck gExistInv'

main :: IO ()
main = do
    testAssociate
    testExistInv
    testExistUnit
    putStrLn "Done!"
