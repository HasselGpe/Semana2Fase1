# Los Números De Fibonacci

# Mathematics is not just solving for X, It is also figuring out WHY. (Arthur Benjamin)

# Las matemáticas nunca dejan de asombrarme y mucho porque están detrás y explican las cosas que más me gustan.

# Algún día has visto una flor o un caracol? Atrás de estas figuras están los números de Fibonacci y en muchos patrones de la naturaleza, la arquitectura, el arte, etc.

# Te recomiendo ver este vídeo: The magic of Fibonacci numbers.

# alt text

# La secuencia de Fibonacci
# Esta es parte de la secuencia de números de Fibonacci:

# 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144...
# Si te fijas empezando en el 2 cada número de Fibonacci puede calcularse como la suma de los dos números anteriores de la secuencia.

# alt text

# Recursos Externos
# Fibonacci Numbers on Wikipedia
# Doodling in Math: Spirals, Fibonacci, and Being a Plant: Part 1, Part 2, and Part 3
# Ruby Kickstart - Introduction to Recursion
# Objetivos Académicos
# Modelar un algoritmo matemático en Ruby
# Conocer nuevos Métodos nativos de Ruby
# Practicar el concepto Recursión
# Comprender y analizar la eficiencia de diferentes implementaciones
# Actividades
# Para este ejercicio tendrás que crear de nuevo dos métodos que reciban un integer positivo n y regresen el el nth fibonacci number, un método iterativo y un método recursivo.

# Deberás comparar la eficiencia, pros y contras de las dos implementaciones.

# Recursive[edit]
# fibonacci = { x |
#         true? x < 2, x, { fibonacci(x - 1) + fibonacci(x - 2) }
# }
# Iterative[edit]
# long long int fibb(int n) {
#   int fnow = 0, fnext = 1, tempf;
#   while(--n>0){
#     tempf = fnow + fnext;
#     fnow = fnext;
#     fnext = tempf;
#     }
#     return fnext; 
# }
# Driver Code:

# p fibonacci_iterative(0) == 0
# p fibonacci_iterative(1) == 1
# p fibonacci_iterative(2) == 1
# p fibonacci_iterative(3) == 2
# p fibonacci_iterative(4) == 3
# p fibonacci_iterative(5) == 5

# p fibonacci_recursive(0) == 0
# p fibonacci_recursive(1) == 1
# p fibonacci_recursive(2) == 1
# p fibonacci_recursive(3) == 2
# p fibonacci_recursive(4) == 3
# p fibonacci_recursive(5) == 5
# Benchmarking
# Las computadoras son muy rápidas para realizar procesos pero muchas veces las llevamos al limite o simplemente las ponemos a trabajar demás cuando existen soluciones que pueden ser más eficientes.

# Vamos a comparar la eficiencia de estos dos métodos y para ello utilizaremos el modulo de ruby Benchmark. Deberás correr mil veces cada programa y hacerlo para varios números que no sean muy grandes. Muchas veces las computadoras pueden meter ruido debido a otros procesos que están corriendo por lo que te sugerimos correr varias veces el mismo problema para estar seguros de su resultado.

# Seguramente encontraras que el método recursivo es más lento. Encuentra a que se debe esto y donde esta haciendo trabajo doble tú método. Refactoriza el método y haz que sea más rápido que la otra implementación.

# Revisa esta imagen que te dará una pista de que esta pasando:

# alt text
########################################################################################################################################################
def fibonacci_iterative(n)
  array = [0,1]
  until (array.length - 1) >= n
    array << (array[-1] + array[-2])
  end
  array[n]
end
#Drive Code
p fibonacci_iterative(0) == 0
p fibonacci_iterative(1) == 1
p fibonacci_iterative(2) == 1
p fibonacci_iterative(3) == 2
p fibonacci_iterative(4) == 3
p fibonacci_iterative(5) == 5
########################################################################################################################################################

def fibonacci_recursive(num)
  return 0 if num == 0
  return 1 if num == 1

  fibonacci_recursive(num - 1) + fibonacci_recursive(num - 2)

end
#Drive Code
p fibonacci_recursive(0) == 0
p fibonacci_recursive(1) == 1
p fibonacci_recursive(2) == 1
p fibonacci_recursive(3) == 2
p fibonacci_recursive(4) == 3
p fibonacci_recursive(5) == 5


