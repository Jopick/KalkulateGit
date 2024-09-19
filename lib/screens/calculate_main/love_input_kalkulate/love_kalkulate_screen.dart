import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class loveCalculate extends StatefulWidget {
  const loveCalculate({super.key,});

  State <loveCalculate> createState() => _loveCalculate();
}
class _loveCalculate extends State<loveCalculate>{
  late String loveMassange;
  void didChangeDependencies(){
    final args = ModalRoute.of(context)?.settings.arguments;
    if(args == null){
      print('Oh no you give me null');
      return;
    }

    loveMassange = args as String;

    super.didChangeDependencies();
  }
  void teleport(String str){
    Navigator.of(context).pushNamed(
        '/',
        arguments: str);
  }
  final _textController = TextEditingController();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('$loveMassange' ?? 'massange empty',)),
      body: Padding( padding: const EdgeInsets.all(20.0),
        child:
        Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: _textController,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              hintText: 'Ввод', hintStyle: TextStyle(color: Colors.black,),

                border: OutlineInputBorder(

                )
            ),

          ),
          MaterialButton(
            onPressed: (){
              teleport(_textController.text);
            },
              color: Colors.blue,
              child: Text('Post', style: TextStyle(color: Colors.white),),
          )
        ],
      ),)
    );
  }


}