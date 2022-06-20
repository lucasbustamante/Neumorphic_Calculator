String Display = '0';
String Receptor = '';
operation (String ButtonValue) {
  if (ButtonValue == 'AC'){
    Display = '0';
    Receptor = '';
  }

  else{
    Receptor = Receptor + ButtonValue;
    Display = Receptor;
  }
}