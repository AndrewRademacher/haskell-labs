-- Example Shamlessly Ripped from "A Monad is not a Burrito"
-- http://youtu.be/46Z7Hq4fhN0

-- Data Definition

data Person = Person {
    personName :: Maybe String,
    pet        :: Maybe Pet
} deriving (Eq, Show)

data Pet = Pet {
    petName :: Maybe String,
    owner   :: Maybe Person,
    mother  :: Maybe Pet
} deriving (Eq, Show)

-- Sample Data

colleen :: Person
colleen = Person {
    personName = Just "Colleen",
    pet = (Just (Pet {
        petName = Just "Ebony",
        owner = Nothing,
        mother = (Just (Pet {
            petName = Just "Fluffy",
            owner = (Just (Person {
                personName = Just "Jane",
                pet = Nothing
            })),
            mother = Nothing
        }))
    }))
}

richard :: Person
richard = Person {
    personName = Just "Richard",
    pet = Nothing
}

-- Functions

getBreederName :: Person -> Maybe String
getBreederName p = case pet p of
                    Nothing -> Nothing
                    Just p  -> case mother p of
                                Nothing -> Nothing
                                Just m  -> case owner m of
                                            Nothing -> Nothing
                                            Just o  -> personName o

main :: IO ()
main = do
        print $ getBreederName colleen
        print $ getBreederName richard

        print $ pet colleen >>= mother >>= owner >>= personName
        print $ pet richard >>= mother >>= owner >>= personName
