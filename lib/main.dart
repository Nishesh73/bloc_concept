import 'package:bloc_pattern/blocs/calculaor_block.dart';
import 'package:bloc_pattern/blocs/calculator_event.dart';
import 'package:bloc_pattern/blocs/calculator_state.dart';
import 'package:bloc_pattern/calculation/calculation.dart';
import 'package:bloc_pattern/counterbloc/countbloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<CounterBloc>(
        create: (context) {
        return  CounterBloc();
        },
        child: Counter()),
    );
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: BlocProvider<CalculatorBloc>(
//         create: (context) {
//         return  CalculatorBloc();
//         },
//         child: CalculatorUI()),
//     );
//   }
// }

// class CalculatorUI extends StatelessWidget {
//   CalculatorUI({super.key});


//   TextEditingController firsttext = TextEditingController();

//   TextEditingController secondtext = TextEditingController();

//   num result = 0;


//   @override
//   Widget build(BuildContext context) {
//     CalculatorBloc calbloc = BlocProvider.of(context);
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Calculator using bloc"),
//       ),
//       body: Column(
//         mainAxisSize: MainAxisSize.min,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Flexible(
//               child: TextField(
//             controller: firsttext,
//             decoration: InputDecoration(hintText: "Enter the first number"),
//           )),
//           SizedBox(height: 16), 
//           Flexible(
//               child: TextField(
//             controller: secondtext,
//             decoration: InputDecoration(hintText: "Enter the second number"),
//           )),



// SizedBox(height: 16), 

//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ElevatedButton(
//                     onPressed: () {


//                       calbloc.add(AddEvent(num1:int.parse(firsttext.text),
//                        num2: int.parse(secondtext.text)));
//                       // AddEvent(
//                       //     num1: int.parse(firsttext.text),
//                       //     num2: int.parse(secondtext.text));

//                       // var resultIns = Calculation(
//                       //     num1: int.parse(firsttext.text),
//                       //     num2: int.parse(secondtext.text));
//                       // result = resultIns.add();

                  
//                     },
//                     child: Icon(Icons.add)),
//                 ElevatedButton(
//                     onPressed: () {
//                       // var resultIns = Calculation(
//                       //     num1: int.parse(firsttext.text),
//                       //     num2: int.parse(secondtext.text));
//                       // result = resultIns.subtract();

//                       calbloc.add(SubtractEvent(num1: int.parse(firsttext.text),
//                        num2: int.parse(firsttext.text),));

                    
//                     },
//                     child: Text("-")),
//               ],
//             ),
//           ),
// SizedBox(height: 16), 
//           BlocBuilder(
//             bloc: calbloc,
//             builder: (context,state){
          
//             if(state is CalculatorResult ){
//           return  Text("${state.result}");
//             }
//           else{
          
//            return Text("Some error is occured");
//           }
          
//           })

          
//           // Text("Result is: $result")
//         ],
//       ),
//     );
//   }
// }
