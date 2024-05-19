// Demostración de Anulabilidad y Genéricos en Dart

// Clase genérica Box
class Box<T> {
  T? _object; // Campo para almacenar un objeto de tipo T

  Box.empty() : _object = null; // Constructor para una caja vacía
  Box.full(this._object); // Constructor para una caja con un objeto inicial
  T? get object => _object; // Método para obtener el objeto contenido en la caja

  void setObject(T? newObj) { // Método para establecer un nuevo objeto en la caja
    _object = newObj;
  }

  // Método para desempaquetar un objeto anulable
  T unbox() {
    return _object as T;
  }
}

void main() {
  var stringBox = Box<String>.full('¡Hola, Israel!'); // Crear una caja de cadenas inicializada con un valor
  print("Caja de cadenas: ${stringBox.object}");  // Muestra el contenido de la caja de cadenas
  var intBox = Box<int?>.empty(); // Crear una caja de enteros inicializada con un valor nulo

  intBox.setObject(50); // Define un nuevo valor en la caja de enteros

  print("Caja de enteros: ${intBox.object}"); // Muestar el contenido de la caja de enteros

  var nullableIntBox = Box<int?>.full(null); // Crear una caja de enteros inicializada con un valor nulo

  print("Caja de enteros anulable: ${nullableIntBox.unbox()}"); // Desempaquetar la caja de enteros anulable

  // Crear una caja de Intervalos inicializada con valores
  var intervalBox = Box<Interval<num?>>.full(
    Interval<num?>(1, null)
  );

  // Mostrar el contenido de la caja de Intervalos
  print("Caja de Intervalos: ${intervalBox.object?.isEmpty}");
}

// Definición de la clase Interval con límites anulables en tipos numéricos
class Interval<T extends num?> {
  T? min, max;

  // Constructor de la clase Interval
  Interval(this.min, this.max);

  // Método para verificar si el intervalo está vacío
  bool get isEmpty {
    var localMin = min; // Declaramos una variable local para min
    var localMax = max; // Declaramos una variable local para max

    // Si no hay min o max, el intervalo está abierto y no está vacío
    if (localMin == null || localMax == null) return false;
    // Si hay min y max, comparamos para determinar si el intervalo está vacío
    return localMax <= localMin;
  }
}

