-- Definimos una función para eliminar elementos de una lista
eliminarElementos :: Eq a => [a] -> [a] -> [a]
eliminarElementos lista elementosABorrar = filter (\x -> not (x `elem` elementosABorrar)) lista

main :: IO ()
main = do
    let lista = ["rojo", "verde", "azul", "amarillo", "gris", "blanco", "negro"]
    let elementosABorrar = ["amarillo", "café", "blanco"]
    print (eliminarElementos lista elementosABorrar)
