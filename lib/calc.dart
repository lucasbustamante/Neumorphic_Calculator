String Display = '0';
int dig1 = 0;
int dig2 = 0;
String Result = '';
String Exit = '';
String Operation = '';
int cont = 0;
String Guard = '';
String Guard2 = '';
int cont2 = 0;
String Exit2 = '';

operation (String ButtonValue){

//Limpar tela
  if(ButtonValue == 'AC'){
    Display = '0';
      dig1 = 0;
      dig2 = 0;
      Result = '';
      Exit = '';
      Operation = '';
      cont = 0;
      Guard = '';
      Guard2 = '';
      cont2 = 0;
      Exit2 = '';

    //Não duplicar o ZERO
  }else if (Display == '0' && ButtonValue == '0'){
  }

  //Correção de virgula
  //TODO: Corrir somos que usam virgula
  else if(ButtonValue == ','){
    cont ++;
    if (Display == '0') {
      Exit = '0,';
      Display = Exit;
    }
    else if(cont == 1){
      Exit = Exit + ButtonValue;
      Display = Exit;
    }
  }

  //Operações
  else if(ButtonValue == '÷' || ButtonValue == '×' || ButtonValue == '-' ||
      ButtonValue == '+') {
    Operation = ButtonValue;
    dig1 = int.parse(Guard);
    cont2 ++;
    Display = Exit + Operation;
  }

  //Resultado
  else if(ButtonValue == '='){
    dig2 = int.parse(Guard2);
    if (Operation == '+'){
      Result = (dig1 + dig2).toString();
      Display = Result;
      Exit = Display;
      cont2 = 0;
      Exit2 = '';
      print(Exit);
      Guard = Exit;
    }
    else if(Operation == '-'){
      Result = (dig1 - dig2).toString();
      Display = Result;
      Exit = Display;
      cont2 = 0;
      Exit2 = '';
      print(Exit);
      Guard = Exit;
    }
    else if(Operation == '×'){
      Result = (dig1 * dig2).toString();
      Display = Result;
      Exit = Display;
      cont2 = 0;
      Exit2 = '';
      print(Exit);
      Guard = Exit;
    }else if(Operation == '÷'){
      Result = (dig1 / dig2).toString();
      Display = Result;
      Exit = Display;
      cont2 = 0;
      Exit2 = '';
      print(Exit);
      Guard = Exit;
    }

  }


  else{
    if(cont2 == 0){
      if (Display.length <= 15){
        Exit = Exit + ButtonValue;
        Display = Exit;
        Guard = Exit;
      }else{
        Display = Display;
      }
    }else{
      if (Display.length <= 15){
        Exit2 = Exit2 + ButtonValue;
        Display = Exit + Operation + Exit2;
        Guard2 = Exit2;
      }else{
        Display = Display;
      }
    }

  }
}

