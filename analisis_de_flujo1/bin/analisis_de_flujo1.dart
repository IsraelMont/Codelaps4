// "Prueba de Función de Verificación de Lista Vacía en Dart

// Definición de la función isEmptyList
bool isEmptyList(Object? object) {
  // Verificar si el objeto es una lista
  if (object is List) {
    // Si el objeto es una lista, verificar si está vacía
    return object.isEmpty; // <-- OK!
  } else {
    // Si el objeto no es una lista, devolver 'false'
    return false;
  }
}

void main() {
  // Probando la función isEmptyList con diferentes tipos de objetos
  
  // Prueba 1: Lista vacía
  List<String> emptyList = [];
  print(isEmptyList(emptyList)); // Debería imprimir 'true'
  
  // Prueba 2: Lista no vacía
  List<int> nonEmptyList = [1, 2, 3];
  print(isEmptyList(nonEmptyList)); // Debería imprimir 'false'
  
  // Prueba 3: Objeto que no es una lista
  String notAList = 'Hola';
  print(isEmptyList(notAList)); // Debería imprimir 'false'
  
  // Prueba 4: Objeto nulo
  Object? nullObject;
  print(isEmptyList(nullObject)); // Debería imprimir 'false'
}
