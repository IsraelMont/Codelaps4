

// Definimos una clase Coffee
class Coffee {
  late String _temperature = ''; // Inicializamos _temperature con un valor predeterminado

  void heat() {
    // Método para calentar el café
    if (_temperature.isEmpty) { // Verificamos si _temperature aún no ha sido inicializada
      _temperature = 'hot'; // Si no ha sido inicializada, la establecemos como "caliente"
    } else {
      throw StateError('Cannot heat coffee again.'); // Si ya ha sido inicializada, lanzamos una excepción
    }
  }

  void chill() {
    // Método para enfriar el café
    if (_temperature.isEmpty) { // Verificamos si _temperature aún no ha sido inicializada
      _temperature = 'iced'; // Si no ha sido inicializada, la establecemos como "helada"
    } else {
      throw StateError('Cannot chill coffee again.'); // Si ya ha sido inicializada, lanzamos una excepción
    }
  }

  String serve() {
    // Método para servir el café
    if (_temperature.isNotEmpty) { // Verificamos si _temperature ha sido inicializada
      return '$_temperature coffee'; // Si ha sido inicializada, retornamos la temperatura seguida de "coffee"
    } else {
      throw StateError('Cannot serve coffee without temperature.'); // Si no ha sido inicializada, lanzamos una excepción
    }
  }
}

void main() {
  var coffee = Coffee(); // Creamos una instancia de la clase Coffee
  coffee.heat(); // Calentamos el café
  print(coffee.serve()); // Servimos el café y mostramos el resultado por consola
}
