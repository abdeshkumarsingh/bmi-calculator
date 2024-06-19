import 'dart:math';
class BmiBrain {

  BmiBrain({required this.height, required this.weight});

  final int height;
  final int weight;
  double _bmi = 0.0;

  String calcBMI(){
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(2);
  }
  String getScore(){
    if(_bmi <= 18){
      return 'Under Weight';
    } else if(_bmi > 18 && _bmi < 24.9){
      return 'normal';
    } else {
      return 'over weight';
    }
  }
  String getComment(){
    if(_bmi <= 18){
      return 'OHH! You are too much light weight. Needs to care your body more.';
    } else if(_bmi > 18 && _bmi < 24.9){
      return 'Yeh! you are fit no need to do anything extra. Keep continuing.';
    } else {
      return 'OOPS! You are too heavy. Your health is not good. Loose some weight.';
    }
  }
}