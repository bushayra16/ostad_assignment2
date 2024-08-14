import 'package:flutter/material.dart';

main () {
  runApp(const MaterialApp(home: HomeScreen(),));
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
                appBar: AppBar(
                  title: Text('Greeting App',style: TextStyle(fontSize: 14),),
                ),
                body:  Center(
                  child: 
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Hello, World!', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
                      SizedBox(height: 5,),
                      Text('Welcome to Flutter!',style: TextStyle(fontSize: 13),),
                      SizedBox(height: 5,),
                      Image.asset('lib/assets/flutter.jpg',
                      width: 120,
                      height: 100,
                      fit: BoxFit.fill,
                      ),
                      SizedBox(height: 5,),
                      ElevatedButton(onPressed: (){
                        showDialog(context: context, builder: (context){
                          return AlertDialog(
                            title: Text('Button Pressed!.', style: TextStyle(fontSize: 13),),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero) ,
                          );
                        });
                      },
                      style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.green)),
                      child: Text('Press Me'),
                      )
                    ],
                  ),
                ),
    );
  }
}