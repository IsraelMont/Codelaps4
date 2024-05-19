// Uso del Operador de Reconocimiento Nulo

void main() {
  // Ejemplo del operador de reconocimiento nulo para acceder a la longitud de una cadena potencialmente nula
  String? notAString;
  // ignore: dead_code
  print(notAString?.length); // Imprimirá null
  
  // Ejemplo del operador de reconocimiento nulo para verificar si la longitud de una cadena potencialmente nula es par
  // ignore: dead_code
  print(notAString?.length.isEven); // Generará una excepción de referencia nula
  
  // Ejemplo del operador de reconocimiento nulo en una cadena de métodos para acceder a una propiedad sin riesgo de referencia nula
  showGizmo(null);
}

// Función para mostrar un gizmo, utilizando el operador de reconocimiento nulo en una cadena de métodos
void showGizmo(Thing? thing) {
  print(thing?.doohickey?.gizmo); // Imprimirá null si thing es null, de lo contrario, imprimirá el gizmo
}

// Clase Thing con una propiedad doohickey que puede ser nula
class Thing {
  Doohickey? doohickey;
}

// Clase Doohickey con una propiedad gizmo
class Doohickey {
  String gizmo = "Some gizmo";
}
