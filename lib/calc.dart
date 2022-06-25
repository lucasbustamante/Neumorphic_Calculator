String Display = '0';
String Receptor = '';
double Dig1 = 0;
double Dig2 = 0;
String Operation = '';
bool Test = false;
bool Virg = false;
String Memory = '';
double Conver = 0;
bool Converbool = false;
String oi = '';


operation (String ButtonValue){

  if(ButtonValue == 'AC'){
    Display = '0';
    Receptor = '';
    Test = false;
    Virg = false;
    Dig1 = 0;
    Dig2 = 0;
    Conver = 0;
    Converbool = false;
  }

  //TODO: Corrigir trocar de sinais em meio a soma
  else if(ButtonValue == '+' || ButtonValue == '-' || ButtonValue == '%' ||
      ButtonValue == '×' || ButtonValue == '÷'){
    Test = true;
    if(Dig1 >= 1 || Dig1 <= -1){
      Receptor = Display;
      }else{Dig1 = double.parse(Receptor);
    }
    Virg = false;
    Operation = ButtonValue;
    Test = true;
    Display = Receptor + Operation;
    Memory = Display;
    Receptor = '';
  }

  else if(Receptor == '' && ButtonValue == '0'){
  }

  else if(ButtonValue == '+/-') {
    if(Receptor != ''){
      Conver = double.parse(Receptor);
      Conver = Conver - 2 * Conver;
      Receptor = Conver.toString();

      if (Converbool == false) {
        Display = Receptor;
        Memory = Receptor;
      } else {
        Display = Memory + Receptor;
        Dig2 = double.parse(Receptor);
      }
    }
  }
//TODO: Corrigir somas com double
  else if(ButtonValue == '.'){
    if(Virg == false) {
      Virg = true;
      if (Display == '0') {
        Receptor = '0' + ButtonValue;
        Display = Receptor;
      }else{
        Receptor += ButtonValue;
        Display += ButtonValue;
      }
    }
  }

  else if (ButtonValue == '='){
    Receptor = '';
    Test = false;
    switch(Operation){
      case '+':
        Display = (Dig1 + Dig2).toString();
        break;
      case '-':
        Display = (Dig1 - Dig2).toString();
        break;
      case '×':
        Display = (Dig1 * Dig2).toString();
        break;
      case '÷':
        if(Dig1%Dig2 == 0){
          Display = (Dig1/Dig2).toStringAsFixed(0);
          break;
        }else {
          Display = (Dig1 / Dig2).toString();
        }
        break;
    //TODO: Criar função para contas de porcentagem
      case '%':
        if(Test == true){
          Display = (Dig1 / 100 * Dig2).toString();
        }
        break;
    }

    Dig1 = double.parse(Display);
  }

  else{
    if(Display.length <= 15){
      Receptor += ButtonValue;
      if (Test == false){
        Display = Receptor;
      }
      else if(Test == true){
        Converbool = true;
        Display = Memory + Receptor;
        Dig2 = double.parse(Receptor);
      }
    }
  }
}