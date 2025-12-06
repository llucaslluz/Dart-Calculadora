import 'dart:io';

void main() {
  double numeroUm = 0;
  double numeroDois = 0;
  String operacao = "";

  void soma() {
    print(numeroUm + numeroDois);
  }

  void subtracao(){
    print(numeroUm - numeroDois);
  }

  void divisao(){
    print(numeroUm / numeroDois);
  }

  void mutiplicacao(){
    print(numeroUm * numeroDois);
  }

  void calcular () {
  switch (operacao) {
    case "+":
    soma();

    case "-":
    subtracao();

    case "*":
    mutiplicacao();

    case "/":
    divisao();
    break;
  }
}

  print("Digite o Primeiro valor:");

  String? entrada = stdin.readLineSync();
  if(entrada != null) {
    if (entrada != "") {
      numeroUm = double.parse(entrada);
    }
  }

  print("Digite uma Operação matematica:");

    entrada = stdin.readLineSync();
  if (entrada != null) {
    operacao = entrada;
  }

  print("Digite o Segundo valor:");

  entrada = stdin.readLineSync();
  if (entrada != null) {
    if (entrada != "") {
      numeroDois = double.parse(entrada);
    }
  }

  print("O Resultado da operação é:");
  
  calcular();


/*   if (operacao == "+") {
    soma();
  } else {
    if (operacao == "-") {
      subtracao();
    } else {
        if (operacao == "*") {
          mutiplicacao();
        } else {
            if (operacao == "/") {
              divisao();
            }
          }
      }
    } */

}