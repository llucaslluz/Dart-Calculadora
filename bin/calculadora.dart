import 'dart:io';
void main() {
  double numeroUm = 0;
  double numeroDois = 0;
  String operacao = "";
  List<String> operacoes = <String>["+", "-", "*", "/"];
  String? entrada = "";

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

  void getOperacao() {
    print("Digite uma operação:");
    entrada = stdin.readLineSync();
    if (entrada != null) {
      if (operacoes.contains(entrada!)) {
        operacao = entrada!;
      }
    }
  }

  print("Digite o Primeiro valor:");

  entrada = stdin.readLineSync();
  if(entrada != null) {
    if (entrada != "") {
      numeroUm = double.parse(entrada!);
    }
  }

  getOperacao();

  print("Digite o Segundo valor:");

  entrada = stdin.readLineSync();
  if (entrada != null) {
    if (entrada != "") {
      numeroDois = double.parse(entrada!);
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