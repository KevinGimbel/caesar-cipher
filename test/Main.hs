module Main (main) where
import CaesarCipher

main :: IO ()
main = do
    putStrLn (encode "Hello World" 12)
    putStrLn (decode "Tqxxa Iadxp" 12)
    putStrLn "Don't know what I'm doing :)"
    
