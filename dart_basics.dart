import 'dart:io';
import 'package:dart_basics/dart_basics.dart' as dart_basics;

void main(List<String> arguments) {
  listExample();
}

void greetings(String name) {
  var edad = 24;
  var ejemplo = 41.2;

  print("Hola, $name");
}

void variablesNum() {
  // Variables numericas
  // Enteros
  int age = 24;
  int test = -34;
  int large = 1023;

  // Decimales
  double age2 = 31.1;
  double age3 = 21;

  num age4 = 12;
  num age5 = 12.1;
  age5 = 5;
}

void variablesTexto() {
  // Variable de cadena de texto
  String name = "JuanSe";
  name = "Juan";
  String edad = "24 años";
  String junto = "Soy $name y tengo $edad";
  print(junto);
}

void booleansVar() {
  // Variables booleanas
  bool imHappy = true;

  //Tipo dinamico
  dynamic example = "Hola soy un ejemplo";
  print(example);
  example = 23;
  print(example);

  //Topos fijos
  final String example2 = "JuanSe";
  const String example3 = "Mi Clave 123";
}

void conversacion() {
  //Conversiones
  String toNumber = "21";
  int numbesOK = int.parse(toNumber);
  print("El numero es $numbesOK");

  int numberToString = 617;
  String stringOK = numberToString.toString();
  print(stringOK);

  String toDouble = "34.223";
  double doubleOK = double.parse(toDouble);
  print(doubleOK);
}

void operacionesMatematicas() {
  //Operaciones matematicas
  int a = 1;
  int b = 4;

  int result = a + b; // suma
  int result2 = a - b; // resta
  int result3 = a * b; // multiplicacion
  double result4 = a / b; // division
  int result5 = a ~/ b; // division sin decimal
  int result6 = a % b;

  a += b; // suma

  // a++;

  print("El resultado es $a");
}

void ejercicios() {
  //Ejercicio 1
  print("Introduse tu año de nacimiento; ");
  String date = stdin.readLineSync()!;
  String fecha = date;
  int numEntero = int.parse(fecha);
  print("El numero es $numEntero");
  int anoActual = 2025;
  int edadFinal = anoActual - numEntero;
  print("Tienes $edadFinal años");

  // ejercicio 2
  double cuenta = 29.99;
  double propina = 20;
  int numerOfPeople = 2;

  double pagoPropina = (cuenta * (propina / 100)) + cuenta;
  String pagoFinal = (pagoPropina / numerOfPeople).toStringAsFixed(2);

  print(
    "El precio total con propina es de ${pagoPropina.toStringAsFixed(2)} euros, el total a pagar por persona es de $pagoFinal",
  );

  // ejercicio 3
  print("Introduce un numero: ");
  int numero = int.parse(stdin.readLineSync()!);

  if (numero >= 1) {
    print("EL numero $numero es positivo");
  } else if (numero < 0) {
    print("El numero $numero es negativo");
  } else {
    print("El numero digitado es $numero");
  }

  // Ejercicio 4
  print("Introduce el mes del año en el que se encuentra: ");
  int mesesDelAno = int.parse(stdin.readLineSync()!);
  switch (mesesDelAno) {
    case 1:
      print("Enero");
    case 2:
      print("Febrero");
    case 3:
      print("Marzo");
    case 4:
      print("Abril");
    case 5:
      print("Mayo");
    case 6:
      print("Junio");
    case 7:
      print("Julio");
    case 8:
      print("Agosto");
    case 9:
      print("Septiembre");
    case 10:
      print("Octubre");
    case 11:
      print("Noviembre");
    case 12:
      print("Diciembre");
    default:
      print("El Numero del mes no es valido");
  }
}

void condicionales() {
  // condicionales

  int userAge = 18;

  if (userAge >= 18) {
    print("Eres mayor de edad");
  } else {
    print("Eres menor de edad");
  }

  int experienceYears = 5;
  if (experienceYears > 8) {
    print("Eres un programador SENIOR");
  } else if (experienceYears >= 5) {
    print("Ers un programador MID");
  } else {
    print("Eres un programador junior");
  }

  print("Introduce el dia de la semana: ");
  int numberOfTheWeek = int.parse(stdin.readLineSync()!);
  if (numberOfTheWeek == 1) {
    print("Lunes");
  } else if (numberOfTheWeek == 2) {
    print("Martes");
  } else if (numberOfTheWeek == 3) {
    print("Miercoles");
  } else if (numberOfTheWeek == 4) {
    print("Jueves");
  } else if (numberOfTheWeek == 5) {
    print("Viernes");
  } else if (numberOfTheWeek == 6) {
    print("Sabado");
  } else if (numberOfTheWeek == 7) {
    print("Domingo");
  } else {
    print("El numero no es valido");
  }

  switch (numberOfTheWeek) {
    case 1:
      print("Lunes");
    case 2:
      print("Martes");
    case 3:
      print("Miercoles");
    case 4:
      print("Jueves");
    case 5:
      print("Viernes");
    case 6:
      print("Sabado");
    case 7:
      print("Domingo");
    default:
      print("Numero no valido");
  }
}

// Funciones
void funcionsimple() {
  print("Esto es una funcion");
}

void inputFunction(int a, int b) {
  int result = a + b;
  print("El resultado es $result");
}

int outputFuncion() {
  int a = 5;
  int b = 3;
  return a + b;
}

int completeFuntion(int a, int b) {
  return a + b;
}

void optionalFuncion8({String name = "Desconocido", int age = -1}) {
  print("Eres $name y tienes $age");
}

void optionalFuncion82(String name, {int age = 1}) {
  print("Eres $name y tienes $age");
}

// LIstas

void listExample() {
  List<String> names = ["Juan", "Nelly", "Lexa"];
  var names2 = ["sigris", "diego", "tatiana"];

  // print(names[1]);
  // print(names.last); //da el ultimo del listado
  // print(names.first); //da el primero del listado
  // print(names.length); // da el largo
  // print(names[names.length - 1]);
  // names[2] = "Davis"; // Resmplaza el valor
  // names.insert(2, "Jose"); // se añade un nuevo valor en el lugar escogido
  // names.add("Pickachu"); // se añade un nuevo valor
  names.addAll(names2); // añade listados dentro de otros
  // names.remove("Diego"); // se busca el nombre y se elimina al primero en encontrar
  // names.removeAt(1); // se remueve por pocicion
  // names.clear(); // se elimina toda la lista

  print(names);
}
