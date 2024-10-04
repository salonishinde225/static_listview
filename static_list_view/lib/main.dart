import"package:flutter/material.dart";

void main(){
  runApp(const MainApp());
}
class MainApp extends StatelessWidget{
  const MainApp({super.key});

  @override
  Widget build(BuildContext context){
    print("Device width: ${MediaQuery.of(context).size.width}");
    print("Device height: ${MediaQuery.of(context).size.height}");
    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(
          title:const Text(
            "ListView Demo",
            style:TextStyle(fontSize:30, fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
          ),
          body :ListView(
            children:[
              Image.network(
                "https://images.unsplash.com/photo-1558637845-c8b7ead71a3e?q=80&w=1032&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
              ),
            const Icon(
              Icons.favorite,
              color:Colors.red,
            ),
            const Text(
              "Beautiful",
              style:TextStyle(
                fontSize:30,
                fontWeight:FontWeight.w500,
                color: Colors.pink,
              ),
            ),
            Image.network(
                 "https://www.lightstalking.com/wp-content/uploads/backlit-beach-color-258109-3-1024x576.jpg.webp" ,
              ),
              GestureDetector(
                onTap:() {
                  print("Button Pressed");
                },
                child: Container(
                  height: 50,
                  color:Colors.amber,
                  child:const Text(
                    "Press me",
                    ),
                  ),
                ),
              ],
            ),
          ), 
        );
      }
    }