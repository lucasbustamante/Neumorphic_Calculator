String Display = '0';
String Receptor = '';
int Dig1 = 0;
int Dig2 = 0;
String Operation = '';
bool Test = false;
bool Virg = false;
String Memory = '';
int Conver = 0;
bool Converbool = false;


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
  else if(ButtonValue == '+' || ButtonValue == '-' || ButtonValue == '%' ||
      ButtonValue == '×' || ButtonValue == '÷'){
    Operation = ButtonValue;
    Dig1 = int.parse(Receptor);
    Test = true;
    Display = Receptor + Operation;
    Memory = Display;
  }

  else if(Display == '0' && ButtonValue == '0'){
    Display = Display;
  }

  else if(ButtonValue == '+/-'){
    Conver = int.parse(Receptor);
    Conver = Conver - 2 * Conver;
    Receptor = Conver.toString();
    if (Converbool == false){
    Display = Receptor;
    }else {
      Display = Memory + Receptor;
      Dig2 = int.parse(Receptor);
    }
  }
//TODO: Corrigir somas com double
  else if(ButtonValue == ','){
    if(Virg == false) {
      Virg = true;
    if (Display == '0') {
      Receptor = '0' + ButtonValue;
      Display = Receptor;
    }else{
      Receptor += ButtonValue;
      Display = Receptor;
    }
  }
  }

  else if (ButtonValue == '='){
    Receptor = '';
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
        if(Dig1%Dig2 != 1){
          Display = (Dig1/Dig2).toStringAsFixed(0);
        }else {
          Display = (Dig1 / Dig2).toString();
        }
    }
  }

  else{
    if(Display.length <= 15){
      Receptor += ButtonValue;
      Display = Receptor;
      if(Test == true){
        Converbool = true;
        Receptor =  ButtonValue;
        Display = Memory + Receptor;
        Dig2 = int.parse(ButtonValue);
      }
    }
  }


}