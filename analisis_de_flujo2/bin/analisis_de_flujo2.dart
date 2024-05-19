// Ejemplo - Verificación de Lista Vacía en Dart (Sin seguridad de nulos)

// Without null safety:
bool isEmptyList(Object object) {
  // Verificar si el objeto no es una lista
  if (object is! List) return false;
  // Devolver si la lista está vacía (ERROR si el objeto no es una lista)
  return object.isEmpty; // <-- Error!
}

// Funcion principal
void main() {
  // Pruebas de la función isEmptyList con diferentes tipos de objetos

  // Prueba 1: Lista vacía
  List<String> emptyList = [];
  // Llamar a la función isEmptyList con una lista vacía
  // Debería imprimir 'true' si la función no lanza un error
  print(isEmptyList(emptyList)); // Debería imprimir 'true'

  // Prueba 2: Lista no vacía
  List<int> nonEmptyList = [1, 2, 3];
  // Llamar a la función isEmptyList con una lista no vacía
  // Debería imprimir 'false' si la función no lanza un error
  print(isEmptyList(nonEmptyList)); // Debería imprimir 'false'

  // Prueba 3: Objeto que no es una lista
  String notAList = 'Hola';
  // Llamar a la función isEmptyList con un objeto que no es una lista
  // Debería imprimir 'false' si la función no lanza un error
  print(isEmptyList(notAList)); // Debería imprimir 'false'
  
  // NOTA: Para evitar errores, este bloque de código se ha comentado
  // Evita pasar valores nulos a la función
  // Object nullObject = null;
  // print(isEmptyList(nullObject)); // Esto debería imprimir 'true' o 'false' dependiendo de cómo manejes los valores nulos en la función
}
