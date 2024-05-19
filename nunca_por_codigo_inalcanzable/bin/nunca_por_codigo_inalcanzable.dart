// "Uso del tipo Never para evitar código inalcanzable en Dart".

void main() {
  // Creando dos puntos
  var point1 = Point(2.0, 3.0);
  var point2 = Point(2.0, 3.0);

  // Verificando si los puntos son iguales
  if (point1 == point2) {
    print('Los puntos son iguales.');
  } else {
    print('Los puntos son diferentes.');
  }

  // Creando un objeto que no es un Point
  var notAPoint = 'Not a point';

  // Verificando si el objeto es igual a un punto (debería lanzar una excepción)
  try {
    // ignore: unrelated_type_equality_checks
    if (notAPoint == point1) {
      print('El objeto es igual a un punto.');
    } else {
      print('El objeto no es igual a un punto.');
    }
  } catch (e) {
    print('Error: $e');
  }
}

// Definición de la clase Point
class Point {
  final double x, y;

  // Constructor de la clase Point
  Point(this.x, this.y);

  // Sobrecarga del operador ==
  @override
  // ignore: hash_and_equals
  bool operator == (Object other) {
    // Verificando si el objeto es de tipo Point
    if (other is! Point) {
      // Lanzando una excepción si el objeto no es un Point
      throw wrongType('Point', other);
    }
    // Verificando si las coordenadas x e y son iguales
    return x == other.x && y == other.y;
  }

  // Método para lanzar una excepción de tipo ArgumentError
  Never wrongType(String type, Object value) {
    throw ArgumentError('Expected $type, but was ${value.runtimeType}.');
  }
      
}
