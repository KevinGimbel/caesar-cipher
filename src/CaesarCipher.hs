-- ceaser cipher
-- write out text based on a fixed "shift" in letters
-- see https://en.wikipedia.org/wiki/Caesar_cipher
-- Blog post https://kevingimbel.de/blog/2024/06/learning-haskell-caesar-cipher/

module CaesarCipher (encode, decode, shiftLetter) where

-- get next letter, if we reach Z the next is A
succLetter :: Char -> Char
succLetter 'z' = 'a'
succLetter 'Z' = 'A'
succLetter x = succ x

-- get prev letter, if we reach A the previous is Z again
predLetter :: Char -> Char
predLetter 'a' = 'z'
predLetter 'A' = 'Z'
predLetter x = pred x

-- shiftLetter performs a caesar cipher on a letter.
-- Char -> Letter to shift
-- Int  -> Amount to shift by
-- Bool -> Direction (True -> Encode, False -> Decode)
shiftLetter :: Char -> Int -> Bool -> Char
shiftLetter ' ' _ _ = ' '
shiftLetter letter 0 _ = letter
shiftLetter letter offset True = shiftLetter (succLetter letter) (offset - 1) True
shiftLetter letter offset False = shiftLetter (predLetter letter) (offset - 1) False

-- encode sentences
encode :: [Char] -> Int -> [Char]
encode input offset = [shiftLetter x offset True | x <- input]

-- decode sentences
decode :: [Char] -> Int -> [Char]
decode input offset = [shiftLetter x offset False | x <- input]