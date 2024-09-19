import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:kulkelatelove/answer.dart';
import 'package:kulkelatelove/screens/calculate_main/kalkulate_flex_size.dart';
import 'package:kulkelatelove/screens/calculate_main/find_love_word/FindWord.dart';
//import 'package:kulkelatelove/screens/calculate_main/kalkulate.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String loveMassange = '?';
  bool isVisible = false;
  double flexSize = 50.0;
  final double identRow = 6;
  String equation = '';
  String dateBirthday = '??';

  String equationThree = '';
  String equationSecond = '';
  double fuckingPudding = 1;

  void didChangeDependencies(){
    final args = ModalRoute.of(context)?.settings.arguments;
    if (args == null){
      print('I do not your date birthday');
      //loveMassange = _counter;
      return;
    }
    loveMassange = args as String;
    dateBirthday = loveMassange;
    super.didChangeDependencies();
  }





//000000000000000000000000000000000000000000000000000000000000000000000000000000000000
  void equationSeven(){
    setState(() {
      equation += '7';
      flexSize =  adaptetFlexSize(equation);

    });
  }
  void mainString(String args){
    setState(() {
      equation += args;
      flexSize = adaptetFlexSize(equation);
    });
  }
  void equationEgiht(){
    setState(() {
      equation += '8';
      flexSize = adaptetFlexSize(equation);

    });
  }
  void equationNine(){
    setState(() {
      equation += '9';
      flexSize = adaptetFlexSize(equation);

    });
  }
  //0000000000000000000000000
  void equationFour(){
    setState(() {
      equation += '4';
      flexSize = adaptetFlexSize(equation);

    });
  }
  void equationFive(){
    setState(() {
      equation += '5';
      flexSize = adaptetFlexSize(equation);

    });
  }
  void equationsSix(){
    setState(() {
      equation += '6';
      flexSize = adaptetFlexSize(equation);

    });
  }
  //000000000000000
  void equationOne(){
    setState(() {
      equation += '1';
      flexSize = adaptetFlexSize(equation);

    });
  }
  void equationTwo(){
    setState(() {
      equation += '2';
      flexSize = adaptetFlexSize(equation);

    });
  }
  void equationTree(){
    setState(() {
      equation += '3';
      flexSize = adaptetFlexSize(equation);

    });
  }
  void equationZero(){
    setState(() {
      equation += '0';
      flexSize = adaptetFlexSize(equation);

    });
  }
  //000000000000000000
  void equationAnswer(){
    if(findWord(equation)){
      setState(() {

        equation = loveMassange;

        flexSize = adaptetFlexSize(equation);


      });
    }
    else{

      setState(() {
        equationThree = equationSecond;
        equationSecond = equation;
        //equation = '0 + ' + Answer(equation);
        equation = Answer(equation).toString();
        equationSecond +=  ' = ' + equation;
      });
    }

    //equation = Answer(equation);
          // );

  }
  void equationPoint(){
    setState(() {
      equation += '.';
      flexSize = adaptetFlexSize(equation);


    });
  }
  void equationPluse(){
    setState(() {
      equation += ' + ';
      flexSize = adaptetFlexSize(equation);

    });
  }
  void equationMinuse(){
    setState(() {
      equation += ' - ';
      flexSize = adaptetFlexSize(equation);

    });
  }
  void equationMulication(){
    setState(() {
      equation += ' * ';
      flexSize = adaptetFlexSize(equation);

    });
  }
  void equationDivision(){
    setState(() {
      equation += ' / ';
      flexSize = adaptetFlexSize(equation);
    });
  }
  void clearString(){
    setState(() {
      equation = equation.replaceRange(equation.length - 1, equation.length, '');
      flexSize = adaptetFlexSize(equation);
    });
  }
  void allClearString(){
    setState(() {
      equation = '';
      flexSize = adaptetFlexSize(equation);
    });
  }
  void loveFunction(){
    setState(() {
      //equation = loveMassange;
      equation += 'love(';
      flexSize = adaptetFlexSize(equation);

    });
  }
  void inputLoveDate(){
    setState(() {
      Navigator.of(context).pushNamed(
        '/love',
        arguments: '0_0',
      );
    });
  }

  void equationSecondAnswer(){

  }
  void equastionThreeAnswer(){

  }
  void tert(){
    setState(() {
      isVisible = !isVisible;
      if(fuckingPudding == 1){
        fuckingPudding = 20.0;
      }
      else{
        fuckingPudding = 1;
      }
    });
  }
  void equationEmpty(){

  }


//0000000000000000000000000000000000000000000000000000000000000000000000000000000000
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    const double boxS = 10.0;
    const double sizeNomber = 40;
    return Scaffold(

      appBar: AppBar(
        //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,

      body: Expanded(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,

          children: [
            TextButton(onPressed: inputLoveDate, child: Text('    ', style: TextStyle(color: Colors.white),)),

           /* Column(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.end,
                    children: [Text('$equation', style: theme.textTheme.bodyLarge,)],
                  )]
            ),*/
            Container(height: 30,),
            Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('$equationThree', style: TextStyle(color: Colors.grey, fontSize: 20),),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('$equationSecond', style: TextStyle(color: Colors.grey, fontSize: 20)),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('$equation', style: TextStyle(color: Colors.white, fontSize: flexSize),)
              ],
            ),

            const SizedBox(
              height: 35,
            ),
            Container(
              color: Colors.white24,
              height: 1,
              width: double.infinity,
            ),
            Visibility( visible: isVisible,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(height:  boxS),
                TextButton(onPressed: equationEmpty, child: Text('2nd', style: theme.textTheme.bodySmall,)),
                Text('deg     ', style: theme.textTheme.bodySmall),
                Text('sin      ', style: theme.textTheme.bodySmall),
                Text('cos      ', style: theme.textTheme.bodySmall),
                Text('tan   ', style: theme.textTheme.bodySmall),
                const SizedBox(height:  boxS),
            ])),
            SizedBox(
              height: 25.0,
            ),
            Visibility( visible: isVisible,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(height:  boxS),
                TextButton(onPressed: equationEmpty, child: Text('x^y', style: theme.textTheme.bodySmall,)),
                Text(' lg     ', style: theme.textTheme.bodySmall),
                Text('ln      ', style: theme.textTheme.bodySmall),
                Text('(       ', style: theme.textTheme.bodySmall),
                Text(')    ', style: theme.textTheme.bodySmall),
                const SizedBox(height:  boxS),

              ],),),
            SizedBox(
              height: identRow,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             const SizedBox(height:  boxS),
              Visibility(
                visible: isVisible,
                  child:
                      Container(width: 66,
                          height: 60,

                      child:
                      TextButton(onPressed: loveFunction, child: Text('love', style: theme.textTheme.bodySmall,))
                      )),
                  //TextButton(onPressed: loveFunction, child: Text('love', style: theme.textTheme.bodySmall,)),),
                TextButton(onPressed: allClearString, child: Text('AC  ', style:  TextStyle(color: Colors.orange, fontSize: 27.0),),),
              IconButton(onPressed: clearString, icon: Icon(Icons.backspace_outlined, color: Colors.orange, size: 35.0,),),
              TextButton(onPressed: tert, child: Text('  %' , style: TextStyle(color: Colors.orange, fontSize: 40.0),)),
              TextButton(onPressed: equationDivision, child: Text(' /', style: TextStyle(fontSize: sizeNomber, color: Colors.orange))),
              const SizedBox(height:  boxS,),

            ],),

            SizedBox(
              height: identRow,
            ),

            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(height: boxS),
                Visibility(
                    visible: isVisible,
                    child: TextButton(onPressed: equationEmpty, child: Text('x!', style: theme.textTheme.bodySmall,)),),
                TextButton(onPressed: equationSeven,child: Text('7', style: theme.textTheme.bodyMedium),),
                TextButton(onPressed: equationEgiht, child: Text('8', style: theme.textTheme.bodyMedium)),
                TextButton(onPressed: equationNine, child: Text('9', style: theme.textTheme.bodyMedium)),
                IconButton(onPressed: equationMulication, icon: const Icon(Icons.clear_rounded, color: Colors.orange, size: sizeNomber,),),
                const SizedBox(height: boxS,),

              ],
            ),
            SizedBox(
              height: identRow,
            ),

            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(height: boxS,),
                Visibility(
                    visible: isVisible,
                    child: TextButton(onPressed: equationEmpty, child: Text('1/x', style: theme.textTheme.bodySmall,)),),
                TextButton(onPressed: equationFour, child: Text('4', style: theme.textTheme.bodyMedium,)),
                TextButton(onPressed: equationFive, child: Text('5', style:theme.textTheme.bodyMedium)),
                TextButton( onPressed: equationsSix, child: Text('6', style: theme.textTheme.bodyMedium,), ),
                IconButton(onPressed: equationMinuse, icon: const Icon(Icons.remove, color: Colors.orange, size: sizeNomber,)),
                const SizedBox(height: boxS,),
              ],
            ),
            SizedBox(
              height: identRow,
            ),

            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(height: boxS,),
                Visibility(
                  visible: isVisible,
                    child: TextButton(onPressed: equationEmpty, child: Text('pi', style: theme.textTheme.bodySmall,)),),
                TextButton(onPressed: equationOne, child: Text('1', style: theme.textTheme.bodyMedium)),
                TextButton(onPressed: equationTwo, child: Text('2', style: theme.textTheme.bodyMedium)),
                TextButton(onPressed: equationTree, child: Text('3', style: theme.textTheme.bodyMedium)),
                TextButton( onPressed: equationPluse, child: const Text('+', style: TextStyle(fontSize: sizeNomber, color: Colors.orange)),),
                const SizedBox(height: boxS,),
              ],
            ),
            SizedBox(
              height: identRow,
            ),

            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(height: boxS,),
                Visibility(visible: isVisible,
                  child: TextButton(onPressed: equationEmpty, child: Text('e', style: theme.textTheme.bodySmall,)),),
                IconButton(onPressed: tert, icon: Icon(Icons.transform, color: Colors.orange, size: 30,)),
                TextButton(onPressed: equationZero, child: Text('0', style: theme.textTheme.bodyMedium,)),
                TextButton(onPressed: equationPoint, child: Text('.', style: theme.textTheme.bodyMedium,)),
                Container(
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.orange),
                  child: TextButton(onPressed: equationAnswer, child: Text('=', style: TextStyle(color: Colors.white, fontSize: 35),),
                  ),
                ),
                const SizedBox(height: boxS,),
              ],
            ),

            SizedBox(
              height: identRow * 4,
            )
          ],
        ),
      ),
    );
  }
}