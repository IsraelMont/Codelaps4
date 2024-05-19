// "Manejo seguro de valores nulos en respuestas HTTP".

void main() {
  // Crear instancias de HttpResponse
  var httpResponseOk = HttpResponse.ok();
  var httpResponseNotFound = HttpResponse.notFound();

  // Imprimir las respuestas HTTP
  print(httpResponseOk); // Imprimirá "OK"
  print(httpResponseNotFound); // Imprimirá "ERROR 404 NOT FOUND"
}

// Definición de la clase HttpResponse
class HttpResponse {
  final int code;
  final String? error; // El campo error puede ser null

  // Constructor para una respuesta HTTP exitosa (código 200)
  HttpResponse.ok()
      : code = 200, // Establecer el código de respuesta
        error = null; // No hay error, por lo que se establece como null

  // Constructor para una respuesta HTTP de no encontrado (código 404)
  HttpResponse.notFound()
      : code = 404, // Establecer el código de respuesta
        error = 'Not found'; // Establecer el mensaje de error

  // Método toString para representar la respuesta HTTP como una cadena
  @override
  String toString() {
    // Verificar si el código de respuesta es 200 (éxito)
    if (code == 200) {
      return 'OK'; // Si es así, devolver "OK"
    } else {
      // Si no es 200, construir un mensaje de error con el código y el error (en mayúsculas)
      return 'ERROR $code ${(error!).toUpperCase()}';
    }
  }
}
