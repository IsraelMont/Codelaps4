// "Técnicas avanzadas de manejo de valores nulos en Dart utilizando operadores de reconocimiento de nulos"

void main() {
  // Usando el operador de reconocimiento de nulos para acceder a la longitud de una cadena potencialmente nula
  String? notAString;
  // ignore: dead_code
  print(notAString?.length); // Imprimirá null
  
  // Usando el operador de reconocimiento de nulos para verificar si la longitud de una cadena potencialmente nula es par
  // ignore: dead_code
  print(notAString?.length != null ? notAString!.length.isEven : null); // Imprimirá null
  
  // Usando el operador de reconocimiento de nulos en una cadena de métodos para acceder a una propiedad sin riesgo de referencia nula
  showGizmo(null);
}

// Función para mostrar un gizmo, utilizando el operador de reconocimiento de nulos en una cadena de métodos
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
