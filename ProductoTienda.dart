class Producto {
  String nombre;
  String descripcion;
  String precio;

  String menu = '$Hamburguesa() + $Bebida()';

  Producto(this.nombre, this.descripcion, this.precio);
}

class ProductoTienda extends Producto {
  DateTime fechaCaducidad;
  int unidadesStock;

  ProductoTienda(nombre, descripcion, precio)
      : super(nombre, descripcion, precio);
}

abstract class Hamburguesa extends ProductoTienda implements Caducidad {
  String vegeteriana;
  String tipoCarne;

  Hamburguesa(nombre, descripcion, precio) : super(nombre, descripcion, precio);

  Hamburguesa.pollo(
      [String nombre = 'Hamburguesa de pollo',
      String descripcion = 'Hamburguesa de pollo',
      double precio = 5.50,
      String tipoCarne = 'pollo'])
      : super(nombre, descripcion, precio);

  Hamburguesa.vegetariana(nombre, descripcion, precio, vegetariana)
      : super(nombre, descripcion, precio);

  String esVegeteriana() {
    return 'Vegetariana';
  }

  void setVegeteriana(String vegeteriana) {
    this.vegeteriana = 'Vegetariana';
  }
}

abstract class Bebida extends ProductoTienda implements Caducidad {
  String tipo;
  bool alcohol;

  Bebida(nombre, descripcion, precio) : super(nombre, descripcion, precio);

  Bebida.alchoolica(nombre, descripcion, precio, [bool alcohol = true])
      : super(nombre, descripcion, precio);
}

abstract class Postre extends ProductoTienda implements Caducidad {
  bool lactosa;

  Postre(nombre, descripcion, precio) : super(nombre, descripcion, precio);
}

class Caducidad extends ProductoTienda {
  bool caducado;

  Caducidad(nombre, descripcion, precio, [bool caducado = false])
      : super(nombre, descripcion, precio);
}
