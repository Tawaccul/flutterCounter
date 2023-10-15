import 'package:flutter/material.dart'; 


void main() => runApp(MainPage());

class MainPage extends StatefulWidget{
  MyFirstApp createState()=> MyFirstApp();
}

int _count = 50;

class MyFirstApp extends State<MainPage> { 
  
  @override 
  Widget build(BuildContext context) { 
   
   
    return MaterialApp (
      home: Scaffold (
        backgroundColor: Colors.white, 
        appBar: AppBar(
          title: Text('Counter'),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Click "-" for discriminent',
                  style: TextStyle(fontSize: 18),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:<Widget> [
                    
                    ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              disabledBackgroundColor: Colors.white,
              shadowColor: Color.fromARGB(255, 234, 255, 0),
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0)),
              minimumSize: Size(60, 50), //////// HERE
            ),
                 onPressed: (){
                  setState((){
                     _count--;
                  });
                 }, 
                     child: Icon(Icons.arrow_back_ios)),
                     Container(
                      padding: EdgeInsets.all(15),
                      color: Colors.white,
                      child:Text(
                        
                      '$_count',
                    textAlign: TextAlign.start,
                    
                      style: TextStyle(backgroundColor: Colors.white, fontSize: 24),)),
                     
                  ElevatedButton(
              style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              disabledBackgroundColor: Colors.white,
              shadowColor: Color.fromARGB(255, 234, 255, 0),
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0)),
              minimumSize: Size(60, 50), //////// HERE
            ),
                 onPressed: (){
                  setState(() {
                     _count++;
                  });
                 
                 }, 
                     child: Icon(Icons.arrow_forward_ios)),
                    ]
                  ),
                Text(
                  'Click "+" for incridiment', 
                   style: TextStyle(fontSize: 18),)
              ],
            ),
          ),
        ), 
      ),
    );
 
  }
  
}

