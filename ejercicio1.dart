class Drone {
  String id;
  double capacidadCargaKg;
  int autonomiaMin;

  Drone(this.id, this.capacidadCargaKg, this.autonomiaMin) {
    if (capacidadCargaKg <= 0 || autonomiaMin <= 0) {
      throw ArgumentError('La capacidad de carga y la autonomía deben ser mayores que 0.');
    }
  }

  void mostrarFicha() {
    print('ID: $id | Carga: ${capacidadCargaKg}kg | Autonomía: ${autonomiaMin} min');
  }
}

class DroneMaritimo extends Drone {
  double resistenciaCorrosion;

  DroneMaritimo(
    String id,
    double capacidadCargaKg,
    int autonomiaMin,
    this.resistenciaCorrosion,
  ) : super(id, capacidadCargaKg, autonomiaMin) {
    if (resistenciaCorrosion < 0) {
      throw ArgumentError('La resistencia a la corrosión no puede ser negativa.');
    }
  }

  @override
  void mostrarFicha() {
    print('ID: $id | Carga: ${capacidadCargaKg}kg | Autonomía: ${autonomiaMin} min | Resistencia a corrosión: ${resistenciaCorrosion}');
  }
}

void main() {
  var drone1 = Drone('DR001', 5.0, 120);
  var droneMaritimo1 = DroneMaritimo('DM001', 8.0, 180, 9.5);

  drone1.mostrarFicha();
  droneMaritimo1.mostrarFicha();
}

