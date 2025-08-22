-- Esta es la funcion que le suma 1 a un numero
incrementar :: Int -> Int
incrementar n = n + 1

-- Esta es la que le resta 1 a un numero
predecesor :: Int -> Int
predecesor n = n - 1

-- Esta es la funcion que suma dos numeros haciendo uso del incrementar y predecesor
sumar :: Int -> Int -> Int
sumar a 0 = a
sumar a b = sumar (incrementar a) (predecesor b)

-- Esta es la funcion que resta b de a haciendo uso del predecesor
restar :: Int -> Int -> Int
restar a 0 = a
restar a b = restar (predecesor a) (predecesor b)

-- Esta es la funcion que multiplica haciendo uso de restar y recursion
mult :: Int -> Int -> Int
mult _ 0 = 0
mult a b = sumar a (mult a (predecesor b))

-- Esta es la funcion que divide haciendo uso de restar y recursion
div :: Int -> Int -> Int
div _ 0 = error "ERROR: no se puede dividir por cero"
div a b
    | a < b     = 0
    | otherwise = incrementar (div (restar a b) b)

-- Esta funcion nos ayuda a comprobar las operaciones
main :: LF ()
main = do {
  putStrLn "Suma de 12 + 3:";
  print (sumar 12 3);
  putStrLn "Resta de 20 - 7:";
  print (restar 20 7);
  putStrLn "Multiplicacion de 9 * 2:";
  print (mult 9 2);
  putStrLn "Division de 28 / 7:";
  print (div 28 7)
}