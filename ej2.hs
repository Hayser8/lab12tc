-- Definimos una función para elevar cada elemento de una lista a la potencia n
elevarPotencia :: Int -> [Int] -> [Int]
elevarPotencia n lista = map (\x -> x ^ n) lista

main :: IO ()
main = do
    let lista = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]  
    let n = 3                                    
    print (elevarPotencia n lista)
