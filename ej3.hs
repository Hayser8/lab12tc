-- Definimos una función para calcular la transpuesta de una matriz
transpuesta :: [[a]] -> [[a]]
transpuesta [] = []
transpuesta matriz
    | any null matriz = []  -- Si alguna fila está vacía, devolvemos una matriz vacía
    | otherwise = map (\i -> map (!! i) matriz) [0 .. length (matriz !! 0) - 1]

main :: IO ()
main = do
    let matriz = [[1, 2, 3, 1],
                  [4, 5, 6, 0],
                  [7, 8, 9, -1]]
    print (transpuesta matriz)
