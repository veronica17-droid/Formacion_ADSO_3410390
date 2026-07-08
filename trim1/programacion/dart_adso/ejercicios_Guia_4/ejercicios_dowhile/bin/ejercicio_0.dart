import "dart:io";

void main() {
  double totalCompra = 0.0;
  int continuar;

  print("=== ASISTENTE DE COMPRAS DEL SUPERMERCADO ===");

  do {
    print("\nIngrese el precio del artículo:");
    double precio = double.parse(stdin.readLineSync()!);

    print("¿Cuántas unidades de este artículo lleva?:");
    int cantidad = int.parse(stdin.readLineSync()!);

    double gastoArticulo = precio * cantidad;
    print("Gasto en este artículo: \$${gastoArticulo}");

    totalCompra = totalCompra + gastoArticulo;


    print("¿Desea registrar otro artículo? (1: Sí / 2: No):");
    continuar = int.parse(stdin.readLineSync()!);

  } while (continuar == 1); 
  print("El total estimado de su compra es: \$${totalCompra}");
  print("¡Lista para pasar por la caja registradora!");

}