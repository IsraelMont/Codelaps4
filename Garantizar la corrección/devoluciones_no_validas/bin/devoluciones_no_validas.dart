// "Garantizar la corrección en Dart con la seguridad nula". Esto refleja el tema principal del código, 
// que trata sobre cómo la seguridad nula en Dart ayuda a evitar devoluciones no válidas y 
//  garantiza la corrección del código.

void main() {
  // Imprimir el resultado de llamar a la función missingReturn
  print(missingReturn());

  // Imprimir el resultado de llamar a la función alwaysReturns con diferentes valores
  print(alwaysReturns(0)); // Debería imprimir 'zero'
  print(alwaysReturns(5)); // Debería imprimir '5'
  print(alwaysReturns(2000)); // Debería imprimir 'big'

  // Verificar si el valor es negativo antes de llamar a alwaysReturns
  int value = -5;
  if (value >= 0) {
    print(alwaysReturns(value)); // Debería lanzar un ArgumentError
  } else {
    print('El valor $value es negativo, no se puede procesar.'); // Mensaje de error personalizado
  }
}

String missingReturn() {
  // Definición de la función missingReturn
  // No hay una declaración de retorno aquí, lo cual es un error
  // Devuelve una cadena indicando que falta la devolución
  // Esta función debe devolver un valor de tipo String, pero no lo hace
  // Esto resultará en un error en tiempo de compilación
  // Para corregirlo, agrega una declaración de retorno que devuelva una cadena
  // Por ejemplo, 
  return 'Missing return!';
}

String alwaysReturns(int n) {
  // Definición de la función alwaysReturns
  // Esta función devuelve diferentes valores basados en el valor de 'n'
  if (n == 0) {
    return 'zero';
  } else if (n < 0) {
    // Si el valor es negativo, lanzamos un ArgumentError
    throw ArgumentError('Negative values not allowed.');
  } else {
    if (n > 1000) {
      return 'big';
    } else {
      return n.toString();
    }
  }
}

