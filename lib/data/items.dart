import 'package:flutter/material.dart';
import 'package:listappontrial/homePageUI.dart';

class InformationOfBikes{
  InformationOfBikes({this.brand, this.model, this.price, this.image});
  final String brand;
  final String model;
  final String price;
  final String image;
}

//Adding Main List or Map Here
final List<InformationOfBikes> bikeList = <InformationOfBikes> [
  InformationOfBikes(
      brand:'Bajaj',
      model: 'Dominar',
      price: '1.75 L',
      image: 'images/dominar.jpg'
  ),

  InformationOfBikes(
      brand:'KTM',
      model: 'Duke 390',
      price: '2.5 L',
      image: 'images/duke390.jpg'
  ),

  InformationOfBikes(
      brand:'Mahindra',
      model: 'Mojo 390',
      price: '2.0 L',
      image: 'images/mojo.jpg'
  ),


  InformationOfBikes(
      brand:'BMW',
      model: 'G310GS',
      price: '4.4 L',
      image: 'images/g310GS.jpg'
  ),

  InformationOfBikes(
      brand:'Honda',
      model: 'CBR 250R',
      price: '1.2 L',
      image: 'images/cbr.jpg'
  ),


];

class InformationBike extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: bikeList.length,
        itemBuilder: (BuildContext context, int index){

          Widget _inkWell(bikes){
            return InkWell(
              onTap: (){},
              child: new Card(
                margin: EdgeInsets.all(10.0),
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      child: new Image.asset(bikes.image),
                    ),
                    new Container(
                      padding: EdgeInsets.all(10.0),
                      child: new Text('Brand: ${bikes.brand}'),
                    ),

                    new Container(
                      padding: EdgeInsets.all(10.0),
                      child: new Text('Model: ${bikes.model}'),
                    ),

                    new Container(
                      padding: EdgeInsets.all(10.0),
                      child: new Text('Price: ${bikes.price}'),
                    ),
                  ],
                ),
              ),
            );
          }

          Widget _inkWell2(bikes){
            return InkWell(
              onTap: (){},
              child: new Card(
                margin: EdgeInsets.all(10.0),
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      child: new Image.asset(bikes.image),
                    ),
                    new Container(
                      padding: EdgeInsets.all(10.0),
                      child: new Text('Brand: ${bikes.brand}'),
                    ),

                    new Container(
                      padding: EdgeInsets.all(10.0),
                      child: new Text('Model: ${bikes.model}'),
                    ),

                    new Container(
                      padding: EdgeInsets.all(10.0),
                      child: new Text('Price: ${bikes.price}'),
                    ),
                  ],
                ),
              ),
            );
          }

          //Defining Map to New Constant to create new list builder.
          InformationOfBikes bikes = bikeList[index];

          //Returning Main List with Builder, always modify codes here
          return filter == null || filter == ""? _inkWell(bikes):_inkWell2(bikes);
        },
    );
  }
}
