// ENUNCIADO 02 SEMANA 06
//Una empresa evalúa a sus empleados bajo dos criterios: puntualidad y rendimiento. En cada caso,
//el empleado recibe un puntaje que va de 1 a 10, de acuerdo con los siguientes criterios:
//Puntaje por puntualidad: - está en función de los minutos de tardanza de acuerdo con la
//siguiente tabla:
//Minutos de tardanza Puntaje
//0 10
//1 a 2 8
//3 a 5 6
//6 a 9 4
//Mas de 9 0
//Puntaje por rendimiento: - está en función de la cantidad de observaciones efectuadas al
//empleado por no cumplir sus obligaciones de acuerdo con la siguiente tabla:
//Observaciones efectuadas Puntaje
//0 10
//1 8
//2 5
//3 1
//Mas de 3 0
//El puntaje total del empleado es la suma del puntaje por puntualidad más el puntaje por
//rendimiento. Basándose en el puntaje total, el empleado recibe una bonificación anual de acuerdo
//con la siguiente tabla:
//Puntaje total Bonificación
//Menos de 11 S/. 2.5 por punto
//11 a 13 S/. 5.0 por punto
//14 a 16 S/. 7.5 por punto
//17 a 19 S/. 10.0 por punto
//20 S/. 12.5 por punto
// los minutos de tardanza y el número de observaciones de un empleado, diseñe un
//programa que determine el puntaje por puntualidad, el puntaje por rendimiento, el puntaje total
//y la bonificación que le corresponden

import 'dart:io';

// Función para obtener el puntaje por puntualidad según los minutos de tardanza
int obtenerPuntajePuntualidad(int minutosTardanza) {
  if (minutosTardanza == 0) {
    return 10;
  } else if (minutosTardanza <= 2) {
    return 8;
  } else if (minutosTardanza <= 5) {
    return 6;
  } else if (minutosTardanza <= 9) {
    return 4;
  } else {
    return 0;
  }
}

// Función para obtener el puntaje por rendimiento según las observaciones efectuadas
int obtenerPuntajeRendimiento(int observaciones) {
  if (observaciones == 0) {
    return 10;
  } else if (observaciones == 1) {
    return 8;
  } else if (observaciones == 2) {
    return 5;
  } else if (observaciones == 3) {
    return 1;
  } else {
    return 0;
  }
}

// Función para calcular la bonificación basada en el puntaje total
double calcularBonificacion(int puntajeTotal) {
  if (puntajeTotal < 11) {
    return puntajeTotal * 2.5;
  } else if (puntajeTotal <= 13) {
    return puntajeTotal * 5.0;
  } else if (puntajeTotal <= 16) {
    return puntajeTotal * 7.5;
  } else if (puntajeTotal <= 19) {
    return puntajeTotal * 10.0;
  } else {
    return puntajeTotal * 12.5;
  }
}

// Función principal
void main() {
  // Solicitar minutos de tardanza
  print("Ingrese los minutos de tardanza:");
  int minutosTardanza = int.parse(stdin.readLineSync()!);

  // Solicitar número de observaciones
  print("Ingrese el número de observaciones:");
  int observaciones = int.parse(stdin.readLineSync()!);

  // Obtener puntajes
  int puntajePuntualidad = obtenerPuntajePuntualidad(minutosTardanza);
  int puntajeRendimiento = obtenerPuntajeRendimiento(observaciones);

  // Calcular puntaje total
  int puntajeTotal = puntajePuntualidad + puntajeRendimiento;

  // Calcular bonificación
  double bonificacion = calcularBonificacion(puntajeTotal);

  // Mostrar resultados
  print("Puntaje por puntualidad: $puntajePuntualidad");
  print("Puntaje por rendimiento: $puntajeRendimiento");
  print("Puntaje total: $puntajeTotal");
  print("Bonificación anual: S/. ${bonificacion.toStringAsFixed(2)}");
}
