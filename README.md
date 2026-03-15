# leetcode (SWIFT)
 
enumerated() = permite recorrer un arreglo y obtener el índice y el valor al mismo tiempo.

## 1. Two Sum

### Idea clave
- Usar un diccionario `[Int: Int]` para guardar `valor -> indice`.
- En cada iteracion, calcular el faltante: `target - nums[i]`.
- Si el faltante ya existe en el diccionario, ya tenemos la respuesta.
- Si no existe, guardar el valor actual con su indice y continuar.

Este enfoque evita el doble `for` y baja de O(n^2) a O(n).

### Complejidad
- Tiempo: O(n)
- Espacio: O(n)


