void main(){
  /*
  Exercise:
  Develop a program to calculate the shipping Jost based on
  the destination zone and the weight of the package (you will be provided)
  Calculate the shipping cost according to these conditions:
  If the destination zone is 'XYZ', the shipping cost is $5 per kilogram.
  If the destination zone is 'ABC', the shipping cost is $7 per kilogram.
  If the destination zone is 'PQR', the shipping cost is $10 per kilogram.
  If the destination zone is not 'XYZ', 'ABC', or 'PQR', display an error message.
  */

  String destinationZone = 'PQR';
  double weight = 6;
  double ?price;
  if(destinationZone == 'XYZ'){
    price = weight * 5;
    // print('Shipping cost: ${weight*10}\$');
  } else if(destinationZone == 'ABC'){
    price = weight * 7;
  } else if(destinationZone == 'PQR'){
    price = weight * 10;
  } else{
    print('Destination zone is not define');
    return; //it execute/terminate the main function
  }
  print('Cost of Shipping : $price\$');

}
