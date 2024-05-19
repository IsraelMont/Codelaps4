// Definición de la función makeCoffee
void makeCoffee(String coffee, [String? dairy]) {
  // Verificar si se proporcionó leche (dairy)
  if (dairy != null) {
    // Si se proporcionó leche, imprimir el tipo de café con la leche agregada
    print('$coffee with $dairy');
  } else {
    // Si no se proporcionó leche, imprimir el tipo de café sin leche
    print('Black $coffee');
  }
}

// Función principal main
void main() {
  // Llamadas a la función makeCoffee con diferentes parámetros para probarla
  makeCoffee("Espresso"); // Sin leche
  makeCoffee("Latte", "Milk"); // Con leche
  makeCoffee("Cappuccino", null); // Sin leche
}