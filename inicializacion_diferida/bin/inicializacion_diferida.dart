// Inicializacion diferencial

// Funcion Principal
void main() {
  // Se instancia un objeto de la clase Weather
  var weather = Weather();
  
  // Accediendo al campo _temperature por primera vez
  // Se imprime la temperatura del día
  print("Today's temperature: ${weather.temperature} degrees Celsius");
}

class Weather {
  late final int _temperature = _readThermometer(); // Inicialización diferida del campo _temperature

  // Getter para acceder al campo _temperature
  int get temperature => _temperature;

  // Método privado para simular la lectura del termómetro
  int _readThermometer() {
    print("Reading thermometer...");
    // Simulando una operación costosa para obtener la temperatura
    return 25; // Valor ficticio
  }
}
