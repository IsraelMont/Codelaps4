// "Uso correcto e incorrecto del operador de índice en mapas con valores potencialmente nulos"
void main() {
  // Uso incorrecto del operador de índice en un mapa que puede devolver un valor nulo
  var map = {'key': 'value'};
  // Error: El tipo de retorno del operador de índice es anulable (String?)
  // print(map['key'].length); // Esto dará un error

  // Uso correcto del operador de índice con el operador de aserción no nulo (!)
  // Asegúrate de que lo que estás imprimiendo sea una cadena
  print((map['key']!).length); // OK, pero el resultado podría ser nulo
}

/*
El resultado sería `5`, que es la longitud de la cadena `"value"`. 

Dado que `"value"` es el valor asociado con la clave `"key"` en el mapa `map`, `map['key']` devuelve `"value"`. 

El operador de aserción no nulo `!` se asegura de que el valor no sea nulo. En este caso, sabemos que `"value"` no es nulo, 
por lo que la expresión `(map['key']!)` devuelve `"value"`. 

Luego, accedemos a la propiedad `length` de la cadena `"value"`, que devuelve `5`, la longitud de la cadena. 

Por lo tanto, el resultado final impreso es `5`.

*/