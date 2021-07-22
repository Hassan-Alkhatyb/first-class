import 'package:anttrbah/qustion_answer/quastin_answer1.dart' ;




int _questionNamber=0 ;
class Answer{
List < Question> _queans  =  [
 Question('ماهو الاسم الحقيقي الابو جاسم ', 'محمد',['احمد ','محمد','حسن','حازم'] ),
 Question('ماهو الاسم الحقيقي ا ', 'احمد ',['احمد ','محمد','حسن','خلف'] ),
  Question('ماهو الاسم الحقيقي الابو جاسم ', 'حسن',['محمود','محمد','حسن','ازم'] ),
   Question('ماهو الاسم الحقيقي  ', 'سعد ',['سعد ','محمد','محسن','حسسسس'] ),
 Question('ماهو الاسم الحقيقي  ', 'حسن',['سعد ','محمد','محسن','حسن'] ),



];
void nextquestion (){
if(_questionNamber < _queans.length - 1)
 _questionNamber++;

}





String gettitele  () {
return _queans[_questionNamber].titele;


}
String getcorrectAnswer(){
return _queans[_questionNamber].correctAnswer  ;


}
String getselacte( int index) {
return _queans[_questionNamber].selacte [index];

}


}