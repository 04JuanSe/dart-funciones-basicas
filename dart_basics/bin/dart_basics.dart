import 'dart:io';
import 'package:dart_basics/Chocolate';

void main(List<String> arguments) {
  var chocolate = Chocolate();
  var test = Chocolate();

  chocolate.flavor = "chocolate";
  chocolate.size = "Small";

  test.price = 500;

  test.charge();
  chocolate.charge();

  nulabilidad();
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

void setExamples() {
  Set<String> names = {"Juan", "davis"};
  Set<String> names2 = {"Juan", "davis"};
  names.add("Juan");
  names.add("juan");
  names.add("jose");
  names.remove("juan");
  // names.clear();
  // names.removeAll("Names2");
  bool result = names.contains("Juan");
  if (result) {
    print("Juan esta invitado");
  } else {
    print("Juan no esta invitado");
  }
  print(names.length);

  List<String> newNames = ["Juan", "Juan", "Nelly"];
  Set<String> newNamesSet = Set.from(newNames);
  print(newNamesSet);
} // los sets no aceptan valores repetidos

// Mapas
void mapExamples() {
  Map<String, int> people = {"Juan": 24, "Lexa": 23, "Mauro": 30};

  people["Juan"] = 30; // Modificar el valor
  people.addAll({"David": 41, "Migel": 22});
  people["Milagros"] = 20; // agregar un nuevo valor
  people.remove("Milafros");

  people.containsKey("Juan"); // se revisa si esta el nombre
  people.containsValue(24); // revisamos si esta un valor

  people.length;
  people.clear();

  print(people);
}

// bucles

void listLoop() {
  List<int> numeros = [1, 2, 3, 4, 5, 6];

  for (var i = 0; i < numeros.length; i++) {
    print("con el for basico tenemor: ${numeros[i]}");
  } // con este for sabras en la posicion en la que te encuentras al momento de iterar

  for (var element in numeros) {
    print("Con el for numero 2 tengo; $element");
  } // en este no es necesario colocar la posicion

  numeros.forEach(print);
}

void setLoop() {
  Set<int> numeros = {9, 8, 7, 5, 4, 3};
  for (var element in numeros) {
    print("El set; $element");
  }

  numeros.forEach(print);
}

void mapLoop() {
  Map<String, int> numeros = {
    "Mis numeros favorito": 12,
    "Cumpleaños": 15,
    "loque sea": 2,
  };

  for (var element in numeros.entries) {
    print("La clave es; ${element.key} y el valor es ${element.value} ");
  }

  numeros.forEach((key, value) {
    print("La clave es $key y el valor $value");
  });
}

// nulabilidad

void nulabilidad() {
  String? name = "juan";
  name = "";
  name = null;
  String example2 =
      name ??
      "Invitado"; // en esto se le dice al codigo que si hay alguna variable nula muestre en la pantalla el nombre invitado
  name ??=
      "Pepe"; // solo si el nombre es nulo le asignas pepe, si no deja el nombre que tenga
  Chocolate? test = Chocolate();

  // para evitar que se muestre en pantalla que el objeto es nulo se hace una comprobacion y asi no muestra nada en pantalla como sea nulo
  if (name != null) {
    print("Hola $name");
  }

  int? example = 13;
  example = null;
} // solo se le puede asignar nulabilidad a una bariable cuando esta sea nulable con una ? sin importar el tipo

// ejercicios del 1 al 7

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

void ejercicio5() {
  /*hacer una lista que te regrese la suma de los numeros pares
     ejemplo 
    Entrada = [1,2,3,4,5,6]
    Salida = La suma de los numeros pares es 12

    tip si a un numero le hacemos %2 == 0 es par.
    */

  List<int> numeros = [1, 2, 3, 4, 5, 6];
  List<int> pares = [];
  List<int> impares = [];
  int sumaPares = 0;
  int sumaImpares = 0;

  for (var i = 0; i < numeros.length; i++) {
    if (numeros[i] % 2 == 0) {
      sumaPares += numeros[i];
      pares.add(numeros[i]);
    } else {
      impares.add(numeros[i]);
      sumaImpares += numeros[i];
    }
  }
  print("Los numeros pares son; $pares y su suma es; $sumaPares");
  print("Los numeros impares son; $impares y su suma es: $sumaImpares");
}

void ejercicio6() {
  /* Escribir un programa que reciba una lista de palabras con unas repetidas y almacene solo las palabras unicas en un set, y mostrar el resultado
    ejemplo
    Entrada: ["dart", "flutter","dart"."codigo","flutter", "movil"]
    Salida: ["dart", "flutter", "Codigo", "movil"]
    */
  List<String> palabras = [
    "dart",
    "flutter",
    "dart",
    "codigo",
    "flutter",
    "movil",
  ];
  Set<String> nuevaPalabra = {};
  for (var element in palabras) {
    nuevaPalabra.add(element);
  }
  print(nuevaPalabra);
  Set<String> newNamesSet = Set.from(palabras);
  print(newNamesSet);
}

void ejercicio7() {
  /*
  contar la frecuencia de ñas áñanras en un map

  escribe un programa que reciba una lista de palabras y cuente cuantas veces aparece cada una, almacenando el resultado en un map

  ejemplo
  Entrada: ["dart", "flutter", "dart", "codigo", "flutter", "movil", "dart"]
  Salida: [dart: 3, flutter: 2, codigo: 1, movil: 1]
  */
  List<String> palabras = [
    "dart",
    "flutter",
    "dart",
    "codigo",
    "flutter",
    "movil",
    "dart",
  ];
  Map<String, int> frecuencia = {};

  for (var element in palabras) {
    if (frecuencia.containsKey(element)) {
      frecuencia[element] = frecuencia[element]! + 1;
    } else {
      frecuencia[element] = 1;
    }
  }
  print(frecuencia);
}
