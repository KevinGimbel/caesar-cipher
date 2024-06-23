# CaesarCipher

<!-- BEGIN mktoc -->

- [CaesarCipher](#caesarcipher)
- [Usage](#usage)
  - [Function signatures](#function-signatures)
    - [encode](#encode)
    - [decode](#decode)
  - [Example](#example)
- [Links](#links)
<!-- END mktoc -->

Haskell library to perform a [Caesar Cipher](https://en.wikipedia.org/wiki/Caesar_cipher) on text.

## Usage

### Function signatures

#### encode

```hs
-- [Char] = String to encode
-- Int    = Number of letters to shift by
encode :: [Char] -> Int -> [Char]
```

#### decode

```hs

-- [Char] = String to decode
-- Int    = Number of letters the string was shifted by
decode :: [Char] -> Int -> [Char]
```

### Example

```hs
import CaesarCipher (encode, deoce)

main :: IO ()
main = do
    putStrLn (encode "Hello World" 12)
    putStrLn (decode "Tqxxa Iadxp" 12)
```

## Links

- [Blog post about the original implementation](https://kevingimbel.de/blog/2024/06/learning-haskell-caesar-cipher/)