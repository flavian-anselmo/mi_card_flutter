import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key key}) : super(key: key);
  //this widget will be created when we create a new object of myapp class
  //it inherits from the stateless widget class
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Center(child: Text('Business Card')),
          backgroundColor: Colors.teal,
        ),
        body: SafeArea(
          //one can set the margin  using the Edgeinset.symetric(vertical:.horizontal.)

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    'https://www.cnet.com/a/img/HS3XPUTZux4P4cArqVywFhwRvpw=/1200x675/2019/08/17/9e246866-e3c9-4070-a8fa-466f0c685d49/siliconvalleyteaser.jpg'),
              ),
              Text(
                'Richard Hendricks',
                style: TextStyle(
                  fontFamily: 'Caveat',
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'CEO AT PIED PIPER',
                style: TextStyle(
                  fontFamily: 'DancingScript',
                  fontSize: 10,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                  letterSpacing: 2.5,
                ),
              ),
              SizedBox(
                width: 200,
                height: 10,
                child: Divider(
                  
                  color: Colors.white,

                ),
              ),
              Card(
                //one can use the list tile insteac of whta we have done
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
                //padding: EdgeInsets.all(5),
                //the widget card has no padding
                child: Padding(
                  padding: const EdgeInsets.all(7.5),
                  child: Row(
                    children: [
                      Icon(
                        Icons.phone_android,
                        color: Colors.teal,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '+254-798-071-510',
                        style: TextStyle(
                          color: Colors.lightGreen,
                          fontFamily: 'DancingScript',
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
                //padding: EdgeInsets.all(5),
                //the widget card has no padding
                child: Padding(
                  padding: const EdgeInsets.all(7.5),
                  child: Row(
                    children: [
                      Icon(
                        Icons.email,
                        color: Colors.teal,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'richardhendricks@piedpiper.org',
                        style: TextStyle(
                          color: Colors.lightGreen,
                          fontFamily: 'DancingScript',
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
            //you can change the vertical direction of the stack  up or down
            //verticalDirection:VerticalDirection.down ,
            //mainAxisAlignment: MainAxisAlignment.center,//center the columns
            //mainAxisAlignment: MainAxisAlignment.spaceAround,  //create space btwn the conteiners in the column
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,  //this will create space evenly around the containers
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //crossAxisAlignment: CrossAxisAlignment.stretch, //stretch all the containers form left to right
            //the container can only hav one child
            //mainAxisAlignment:MainAxisAlignment.spaceBetween,

            /** 
              height: 100.0,
              width: 100.0,  
              //margin: EdgeInsets.fromLTRB(50, 50, 50,50),
              margin: EdgeInsets.only(left:100,right:100,top:100,bottom:100),
              padding:EdgeInsets.only(left: 5,right:5,top:5,bottom:5),
              //you can set all the sides to one value using the .all() method 
              //
              color: Colors.white,
              child: Center(child: Text('winner')),
              
            //columns
            //this is a widget that can have many chldren unilike the the container
            //that can only have one widget
            
            children: <Widget>[
              Container(
                color: Colors.deepOrange,
                width: 100,
                margin:EdgeInsets.fromLTRB(0, 0, 0, 50),

              ),
              //SizedBox(width: 160),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    color: Colors.yellow,
                    width: 100,
                    height:100,
                  ),
                  Container(
                    color:Colors.purpleAccent,
                    width: 100,
                    height:100,
                  ),
                ],
                //inside the space place the item btwn thw boxes 
              ),


              Container(
                width: 100,
                color: Colors.blue,
                margin:EdgeInsets.fromLTRB(0, 0, 0, 50),
              )
             
            ],
            */
          ),
        ),
      ),
    );
  }
}
