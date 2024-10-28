// Clase base Vehiculo
class Vehiculo {
  String marca;
  String modelo;

  Vehiculo(this.marca, this.modelo);

  // Método general para conducir
  void conducir() {
    print("Conduciendo el vehículo de marca $marca, modelo $modelo");
  }
}

// Clase derivada Coche
class Coche extends Vehiculo {
  int numeroDePuertas;

  Coche(String marca, String modelo, this.numeroDePuertas) : super(marca, modelo);

  // Sobrescribimos el método conducir
  @override
  void conducir() {
    print("Conduciendo el coche de marca $marca, modelo $modelo con $numeroDePuertas puertas.");
  }
}

// Clase derivada Moto
class Moto extends Vehiculo {
  bool tieneSidecar;

  Moto(String marca, String modelo, this.tieneSidecar) : super(marca, modelo);

  // Sobrescribimos el método conducir
  @override
  void conducir() {
    String sidecar = tieneSidecar ? "con sidecar" : "sin sidecar";
    print("Conduciendo la moto de marca $marca, modelo $modelo $sidecar.");
  }
}

void main() {
  // Crear un coche y una moto
  Coche miCoche = Coche("Toyota", "Corolla", 4);
  Moto miMoto = Moto("Harley-Davidson", "Sportster", false);

  // Llamamos a los métodos conducir
  miCoche.conducir(); // Llama al método conducir de Coche
  miMoto.conducir();  // Llama al método conducir de Moto
}
