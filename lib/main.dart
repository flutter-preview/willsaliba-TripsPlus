import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: Scaffold(
        
        backgroundColor: const Color.fromARGB(255, 30, 30, 30),
        
        body: Column(children: [

          //notch box
          const SizedBox(
            width: double.infinity,
            height: 30,
            //child: DecoratedBox(decoration: BoxDecoration(color: Colors.red))
          ),

          //header row
          Row( 
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              //notifications
              Container(
                margin: const EdgeInsets.all(20),
                width: 50,
                height: 50,
                child: FloatingActionButton(
                  backgroundColor: const Color.fromARGB(255, 215, 215, 215),
                  child: const Icon(
                    Icons.add, 
                    color: Color.fromARGB(255, 30, 30, 30),
                  ),
                  onPressed: () { 
                    //goto add trip page
                  }
                ),
              ),

              //title
              Container(
                // color: Colors.amber,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                child: const Text('Trips',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 215, 215, 215)
                  )),
              ),

              //add trip
              Container(
                margin: const EdgeInsets.all(20),
                width: 50,
                height: 50,
                child: FloatingActionButton(
                  backgroundColor: const Color.fromARGB(255, 215, 215, 215),
                  child: const Icon(
                    Icons.add, 
                    color: Color.fromARGB(255, 30, 30, 30),
                  ),
                  onPressed: () { 
                    //goto add trip page
                  }
                ),
              ),

          ]),//header row elements

        ]), //app column elements

        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color.fromARGB(255, 216, 216, 216),
          
          items: const[
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: 'Mates',
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Porfile',
            ),
          ]
        ),
         

      ),
    );
  }
}
