import 'package:flutter/material.dart';
void main() => runApp(BasketballCounter());
class BasketballCounter extends StatefullWidget {
   @override 
   State<BasketballCounter> createState() => _BasketballCounterState();
}
class _BasketballCounterState extends State<BasketballCounter>  {
  int teamApoints = 0;
  int teamBpoints = 0;
  
  @override 
  Widget build(BuildContext context)
  {
    return MatrilApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor:Colors.orange,
          title: const Text("Basketball Counter",
          style: TextStyle(color: Colors.black ),
          ),
          centerTitle: false,
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
              Column(
                children:[
                  const Text( 
                    "Team A",
                    style: TextStyle(
                      fontSize: 30,
                      ),
                  ),
                  Text(
                    "$teamApoints",
                     style: TextStyle(
                    fontSize: 80,
                    ),
                  ),
                  ElevatedButton(
                   style: ElevatedButton.styleFrom(
                    Primary: Colors.orange,
                    maximumSize: Size(150,100),elevation: 8,
                    ),
                    onPressed:() {
                      setState((){
                        teamApoints ++;
                      }
                      );
                    },
                    child: Text("Add 1 Points"),
                    ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                    Primary: Colors.orange,
                    maximumSize: Size(150,100),elevation: 8,
                    ),
                    onPressed:() {
                     setState((){
                        teamApoints +=2;
                      }
                      );
                    },
                    child: Text("Add 2 Points"),
                    ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                    Primary: Colors.orange,
                    maximumSize: Size(150,100),elevation: 8,
                    ),
                    onPressed:() {
                      setState((){
                        teamApoints +=3;
                      }
                      );
                    },
                    child: Text("Add 3 Points"),
                  ),

                ],
              ), //column1
              VerticalDivider(
                color: Colors.black,
                thinckness: 50 ,
                endIndent : 400 ,
                indent : 50,
              ),
              Column(
                children:[
                  const Text( 
                    "Team B",
                    style: TextStyle(
                      fontSize: 30,
                      ),
                  ),
                  Text(
                    "teamBpoints", 
                    style: const TextStyle(
                    fontSize: 80,
                    ),
                    ),
                  ElevatedButton(
                   style: ElevatedButton.styleFrom(
                    Primary: Colors.orange,
                    maximumSize: Size(150,100),elevation: 8,
                    ),
                    onPressed:() {
                     setState((){
                        teamBpoints ++;
                      }
                      );
                    },
                    child: Text("Add 1 Points"),
                    ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                    Primary: Colors.orange,
                    maximumSize: Size(150,100),elevation: 8,
                    ),
                    onPressed:() {
                      setState((){
                        teamBpoints +=2;
                      }
                      );
                    },
                    child: Text("Add 2 Points"),
                    ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                    Primary: Colors.orange,
                    maximumSize: Size(150,100),elevation: 8,
                    ),
                    onPressed:() {
                      setState((){
                        teamBpoints +=3;
                      }
                      );
                  
                    },
                    child: Text("Add 3 Points"),
                  ),
                ],
              ),
              ],
            ), //Row

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:
              [
                ElevatedButton(
                   style: ElevatedButton.styleFrom(
                    Primary: Colors.orange,
                    maximumSize: Size(150,100),elevation: 8,
                    ),
                    onPressed:() {
                     setState((){
                        teamApoints --;
                        teamBpoints --;
                      }
                      );
                    },
                    child: const Text("Undo"),
                ),

                ElevatedButton(
                   style: ElevatedButton.styleFrom(
                    Primary: Colors.orange,
                    maximumSize: Size(150,100),elevation: 8,
                    ),
                    onPressed:() {
                      setState((){
                        teamApoints = 0;
                        teamBpoints = 0;
                      }
                      );
                    },
                    child: const Text("Reset"),
                ),
             ],
            ),
          ],
        ),

      ),
    );
  }

  Widget MatrilApp({bool debugShowCheckedModeBanner, Scaffold home}) {}
}
