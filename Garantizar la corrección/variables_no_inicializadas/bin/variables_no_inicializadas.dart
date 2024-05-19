void main() {
  // Declaración de variables
   // int topLevel = 0; // Variable de nivel superior con inicializador
  SomeClass.staticField = 0; // Asignación de un valor a un campo estático de clase

  // Crear una instancia de SomeClass e imprimir los valores de los campos
  var someObj = SomeClass(10);
  print("atDeclaration: ${someObj.atDeclaration}"); // Imprimir el valor de atDeclaration
  print("initializingFormal: ${someObj.initializingFormal}"); // Imprimir el valor de initializingFormal
  print("initializationList: ${someObj.initializationList}"); // Imprimir el valor de initializationList

  // Llamar a la función que utiliza variables locales
  tracingFibonacci(5);
}

// Definición de la clase SomeClass
class SomeClass {
  // Declaración de campos de instancia con inicializadores
  int atDeclaration = 0;
  int initializingFormal;
  int initializationList;
  
  static int staticField = 0;

  // Constructor de SomeClass con parámetro de inicialización formal y lista de inicialización
  SomeClass(this.initializingFormal) : initializationList = 0;
}

// Función que calcula la secuencia de Fibonacci y la imprime
int tracingFibonacci(int n) {
  int result; // Declaración de variable local sin inicializador
  if (n < 2) {
    result = n;
  } else {
    result = tracingFibonacci(n - 2) + tracingFibonacci(n - 1);
  }

  print(result); // Imprimir el valor de result
  return result;
}
