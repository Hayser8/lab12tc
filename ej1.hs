import Data.List (sortBy)
import Data.Ord (comparing)

-- Definimos la lista de diccionarios (en este caso, como una lista de tuplas)
d :: [(String, Int, String)]
d = [("Nokia", 216, "Black"), ("Apple", 2, "Silver"), ("Huawei", 50, "Gold"), ("Samsung", 7, "Blue")]

-- Función para ordenar con respecto a una clave específica
ordenarPorModelo :: [(String, Int, String)] -> [(String, Int, String)]
ordenarPorModelo = sortBy (comparing (\(_, modelo, _) -> modelo))

main :: IO ()
main = print (ordenarPorModelo d)
