import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}


class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('Home Page'),
      ),
      body: Center(child: Column(
        mainAxisSize: MainAxisSize.min, 
        children: <Widget>[Text('Where does this go'),
         RaisedButton(
          child: Text('Go to Section!'),
          onPressed: () {
            Navigator.of(context).push(_createRoute());
          },
        ),
        ]
        //children: Text(
          //'Hello, xxx! Welcome back to Buffer-like-Buffet, your best comprehensive help when it comes to personal finance!',
          //textAlign: TextAlign.center,
         // overflow: TextOverflow.ellipsis,
         //style: TextStyle(fontWeight: FontWeight.bold),
         ),
      )
      //),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => TopicsPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return child;
    },
  );
}

class TopicsPage extends StatelessWidget { //The page where user selects differnt topic
 static final showGrid = true;
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Choose the topic you want to learn about'),
      ),
      body: Center(
        child: showGrid ? _buildGrid() : _buildList(),
      ),
    );
  }
}

  Widget _buildGrid() => GridView.extent( //Main Axis: Row Axis   Cross Axis: Column Axis
      maxCrossAxisExtent: 150, //Maximum extet of tiles in the cross axis
      padding: const EdgeInsets.all(4), //Typical eight-pixel margin on all sides:
     // mainAxisSpacing: 4, //The number of logical pixels between each child along the main axis.
     // crossAxisSpacing: 4,
      children: List.generate(6, (i) {
        return GestureDetector(
          onTap: () {


          },
          child: Container(
            child: Text('what'),
             height: 120.0,
             width: 120.0,
              decoration: BoxDecoration(
           image: DecorationImage(
             image: AssetImage(
              'images/pic$i.jpg'),
           fit: BoxFit.fill,
           
        ),
          //  shape: BoxShape.circle,
      ),
    ),
          // child: Container(child: Center(child: Text('what'))),
        
        );
        // return Center(child: Text('thing'));
        
       }
      ),
  );

 Widget _buildList() => ListView(
        children: [
      );

ListTile _tile(String title, String subtitle, IconData icon) => ListTile(
        title: Text(title,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
            )),
        subtitle: Text(subtitle),
        leading: Icon(
          icon,
          color: Colors.blue[500],
        ),
      );
/*
class HomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  HomePageState createState() => new HomePageState();
}


class HomePageState extends State<HomePage>{
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(appBar: new AppBar(
        title: new Text(widget.title),
      ),
       body: Center(
         Text(
          'Hello, xxx! Welcome back to Buffer-like-Buffet, your best comprehensive help when it comes to personal finance!',
          textAlign: TextAlign.center,
         // overflow: TextOverflow.ellipsis,
         style: TextStyle(fontWeight: FontWeight.bold),
         )
         SimpleRoundButton(
          backgroundColor: Colors.redAccent,
          buttonText: Text("LOGIN", 
          style: TextStyle(
            color: Colors.white
        ),
    ),
    textColor: Colors.white,
)
       ]
        ),
      ),
}
}
*/

//class TopicsPage extends State



