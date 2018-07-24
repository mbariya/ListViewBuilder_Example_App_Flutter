import 'package:flutter/material.dart';
import 'package:listappontrial/data/items.dart';


String filter;

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  TextEditingController controller = new TextEditingController();
  Icon actionIcon = new Icon(Icons.search);
  Widget appBarTitle = new Text("List Items Trial");

  @override
  void initState() {
    // TODO: implement initState

    controller.addListener(() {
      setState(() {
        filter = controller.text;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  _search(){
    setState(() {
      if ( this.actionIcon.icon == Icons.search){
        this.actionIcon = new Icon(Icons.close);
        this.appBarTitle = new TextField(
          controller: controller,
          style: new TextStyle(color: Colors.white,),
          decoration: new InputDecoration(
              prefixIcon: new Icon(Icons.search,color: Colors.white),
              hintText: "Search...",
              hintStyle: new TextStyle(color: Colors.white)
          ),
        );}
      else {
        this.actionIcon = new Icon(Icons.search);
        this.appBarTitle = new Text("List Items Trial");
      }
    });
    controller.clear();
  }


  @override
  Widget build(BuildContext context) {

    return new Scaffold(

      appBar: new AppBar(
        title: appBarTitle,
        actions: <Widget>[
          new IconButton(
            icon: actionIcon,
            onPressed: _search,
          ),
        ],
      ),

      body: new Container(
        color: Colors.blue[50],
        child: new InformationBike(),
      ),


      floatingActionButton: new FloatingActionButton(
        onPressed: _search,

        child: actionIcon,
      ),
    );
  }
}