abstract class Trabajador {
  String nombre;
  double salarioMensual;

  Trabajador(this.nombre, this.salarioMensual);

  double calcularBonificacion();

  void mostrarDatos() {
    print('Nombre: $nombre | Salario mensual: \$${salarioMensual.toStringAsFixed(2)}');
  }
}

class AdministradorSistemas extends Trabajador {
  AdministradorSistemas(String nombre, double salarioMensual)
      : super(nombre, salarioMensual);

  @override
  double calcularBonificacion() => salarioMensual * 0.18;
}

class TecnicoSoporte extends Trabajador {
  TecnicoSoporte(String nombre, double salarioMensual)
      : super(nombre, salarioMensual);

  @override
  double calcularBonificacion() => salarioMensual * 0.10;
}

void main() {
  var trabajadores = <Trabajador>[
    AdministradorSistemas('Ana', 25000),
    TecnicoSoporte('Luis', 18000),
  ];

  for (var t in trabajadores) {
    t.mostrarDatos();
    print('Bonificación: \$${t.calcularBonificacion().toStringAsFixed(2)}\n');
  }
}