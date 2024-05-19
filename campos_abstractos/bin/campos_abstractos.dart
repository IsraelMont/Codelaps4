// Manejo de Campos Abstractos y Acceso Uniforme en Dart

// Definición de la clase abstracta Cup
abstract class Cup {
  // Declaración de un getter abstracto para obtener el contenido de la taza
  Beverage get contents;  
  // Declaración de un setter abstracto para establecer el contenido de la taza
  set contents(Beverage value);
}

// Definición de la clase Beverage para representar una bebida
class Beverage {
  final String name;  // Nombre de la bebida

  Beverage(this.name);  // Constructor de la clase Beverage
}

void main() {
  // Crear una instancia de la clase Beverage con el nombre 'Coffee'
  var coffee = Beverage('Coffee');

  // Crear una instancia de la clase Cup e imprimir el contenido
  var cup = CupImpl();
  cup.contents = coffee;  // Establecer el contenido de la taza como café
  print('El contenido de la taza es: ${cup.contents.name}');  // Imprimir el nombre de la bebida en la taza
}

// Implementación de la clase Cup
class CupImpl implements Cup {
  Beverage? _contents;  // Campo privado que representa el contenido de la taza

  @override
  Beverage get contents => _contents!;  // Getter para obtener el contenido de la taza

  @override
  set contents(Beverage value) {
    _contents = value;  // Setter para establecer el contenido de la taza
  }
}
