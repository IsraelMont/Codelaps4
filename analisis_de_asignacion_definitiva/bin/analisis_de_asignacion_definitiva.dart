// Tracing Fibonacci Sequence en Dart

// Usando seguridad nula:
int tracingFibonacci(int n) {
  final int result; // Se declara la variable "result" como final para garantizar que solo se le asigne un valor una vez.
  if (n < 2) {  // Si el valor de "n" es menor que 2, el número es 0 o 1, por lo que el resultado es igual a "n".
    result = n;
  } else {  // Si "n" es mayor o igual a 2, calculamos el número de Fibonacci recursivamente sumando los dos números anteriores.
    result = tracingFibonacci(n - 2) + tracingFibonacci(n - 1);
  }

  print(result);  // Se imprime el resultado en la consola.
  return result;  // Se devuelve el resultado.
}

void main() {
  // Llamada a la función tracingFibonacci con un valor de prueba (por ejemplo, 5)
  tracingFibonacci(5);  // Se llama a la función "tracingFibonacci" con un valor de "n" igual a 5.
}