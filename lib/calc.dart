String Display = '0';
String Receptor = '';
int Dig1 = 0;
int Dig2 = 0;
String Operation = '';
bool Test = false;

operation (String ButtonValue){

  if(ButtonValue == 'AC'){
    Display = '0';
    Receptor = '';
    Test = false;
  }
  else if(ButtonValue == '+' || ButtonValue == '-' || ButtonValue == '%' ||
  ButtonValue == '+/-' || ButtonValue == '×' || ButtonValue == '÷'){
    Operation = ButtonValue;
    Dig1 = int.parse(Receptor);
    Test = true;
    Display = Receptor + Operation;
    Receptor = Display;
  }
  else if (ButtonValue == '='){
    Receptor = '';
    if(Operation == '+'){
      Display = (Dig1 + Dig2).toString();
    }
    else if(Operation == '-'){
      Display = (Dig1 - Dig2).toString();
    }
    else if(Operation == '×'){
      Display = (Dig1 * Dig2).toString();
    }
    else if(Operation == '÷'){
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
      Test ? Dig2 = int.parse(ButtonValue) : false;
    }
  }

}