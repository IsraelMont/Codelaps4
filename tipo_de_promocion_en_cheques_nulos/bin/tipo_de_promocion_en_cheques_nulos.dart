// "Creación de comandos con argumentos opcionales"

void main() {
  // Llamada a la función makeCommand con y sin argumentos
  print(makeCommand('ls')); // Imprimirá 'ls'
  print(makeCommand('ls', ['--all'])); // Imprimirá 'ls --all'
}

// Función para crear un comando a partir de un ejecutable y una lista de argumentos
String makeCommand(String executable, [List<String>? arguments]) {
  var result = executable; // Variable para almacenar el ejecutable inicialmente

  // Verificar si la lista de argumentos no es null
  if (arguments != null) {
    result += ' ${arguments.join(' ')}'; // Concatenar los argumentos al resultado
  }

  return result; // Devolver el resultado (comando)
}
