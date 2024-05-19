
// Funcion Principal
void main() {
  var coffee = Coffee();  // Creamos una instancia de la clase Coffee
  coffee.heat();  // Llamamos al método heat para calentar el café
  print(coffee.serve()); // Imprimimos el resultado de llamar al método serve, que devuelve el café con la temperatura y "coffee"
}

class Coffee {
  // Declaramos una variable _temperature que inicializaremos tarde
  late String _temperature; // Late initialization

  void heat() { // Método para calentar el café
    _temperature = 'hot'; // Asignamos el valor 'hot' a la variable _temperature
  }

  String serve() {  // Método para servir el café
    return '$_temperature coffee';  // Devolvemos el valor de la variable _temperature concatenado con ' coffee'
  }
}

/*
--- Se crea una instancia de la clase Coffee llamada coffee.
--- Se llama al método heat() en la instancia coffee, lo que asigna el valor 'hot' a la variable _temperature.
--- Luego se llama al método serve() en la instancia coffee, que devuelve el valor de _temperature 
      (que ahora es 'hot') concatenado con la cadena ' coffee'.
--- Finalmente, se imprime el resultado, que será 'hot coffee'.
*/