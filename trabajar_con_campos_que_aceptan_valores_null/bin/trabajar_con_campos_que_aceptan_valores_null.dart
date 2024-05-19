// Manejo de campos que aceptan valores NULL en Dart

void main() {
  var coffee = Coffee();

  // Calentar y verificar la temperatura
  coffee.heat();
  coffee.checkTemp();

  // Enfriar y verificar la temperatura
  coffee.chill();
  coffee.checkTemp();

  // Servir café
  print(coffee.serve());
}

class Coffee {
  String? _temperature; // Declaramos un campo privado que puede aceptar valores NULL para almacenar la temperatura del café.

  void heat() {
    _temperature = 'hot'; // Método para calentar el café y establecer la temperatura como "hot".
  }

  void chill() {
    _temperature = 'iced';  // Método para enfriar el café y establecer la temperatura como "iced".
  }

  void checkTemp() {
    var temperature = _temperature; // Copiamos el valor del campo _temperature a una variable local.
    if (temperature != null) {  // Verificamos si la variable local temperature no es nula.
      // Si no es nula, imprimimos un mensaje indicando que el café está listo para servir con la temperatura actual.
      print('Ready to serve $temperature coffee!');
    }
  }

  // Método para servir el café, devolviendo la temperatura actual junto con la palabra "coffee".
  String serve() => '${_temperature!} coffee';
}


