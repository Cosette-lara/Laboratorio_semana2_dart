class BicicletaSmart {
  String marca;
  String modelo;
  int anio;
  bool tieneGPS;
  bool tieneMonitorRitmo;

  BicicletaSmart.basica({
    required this.marca,
    required this.modelo,
    required this.anio,
  })  : tieneGPS = false,
        tieneMonitorRitmo = false;

  BicicletaSmart.premium({
    required this.marca,
    required this.modelo,
    required this.anio,
  })  : tieneGPS = true,
        tieneMonitorRitmo = true;

  void descripcion() {
    print(
        'Marca: $marca | Modelo: $modelo | Año: $anio | GPS: ${tieneGPS ? "Sí" : "No"} | Monitor de ritmo: ${tieneMonitorRitmo ? "Sí" : "No"}');
  }
}

void main() {
  var biciBasica = BicicletaSmart.basica(
    marca: 'EcoBike',
    modelo: 'Urban',
    anio: 2024,
  );
  var biciPremium = BicicletaSmart.premium(
    marca: 'SpeedX',
    modelo: 'ProMax',
    anio: 2025,
  );

  biciBasica.descripcion();
  biciPremium.descripcion(); 
}
