# Operaciones Aritméticas en Haskell

Este proyecto implementa operaciones aritméticas básicas en Haskell (suma, resta, multiplicación y división) usando únicamente funciones recursivas, junto con las funciones de **sucesor** y **predecesor** como bloques básicos.

## Estructura del Código

### Funciones básicas
- **sucesor**: suma 1 a un número.  
- **predecesor**: resta 1 a un número.  

Estas funciones sirven como base para definir todas las demás operaciones.

## Operaciones Definidas

### Suma
La suma se calcula mediante llamadas recursivas a `sucesor` y `predecesor`.  
La idea es ir reduciendo el segundo número hasta llegar a cero, mientras el primero se va incrementando.

### Resta
La resta se obtiene restando 1 a ambos términos hasta que el segundo sea igual a cero.  
De esta forma, el resultado es la diferencia entre el primero y el segundo.

### Multiplicación
La multiplicación se implementa como sumas repetidas.  
Se suma el primer número tantas veces como lo indique el segundo.

### División
La división se implementa como restas repetidas.  
- Si el primer número es menor que el segundo, el resultado es 0.  
- En caso contrario, se resta el divisor del dividendo de manera recursiva y el cociente se incrementa en cada paso.  
- También se incluye un caso especial para evitar la división por cero.

## Ejecución del Programa

El programa principal (`main`) prueba cada una de las operaciones con ejemplos específicos:

- **Suma de 12 + 3**  
- **Resta de 20 - 7**  
- **Multiplicación de 9 * 2**  
- **División de 28 / 7**

## Resultados Esperados

Al ejecutar el programa, la salida será:

