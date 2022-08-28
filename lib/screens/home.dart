import 'package:firstapp_flutter/widgets/leftbar.dart';
import 'package:firstapp_flutter/widgets/rightbar.dart';
import 'package:flutter/material.dart';
import 'package:firstapp_flutter/all_constants/constants.dart';

class HomeScreen extends StatefulWidget{
  @override
  _homescreen createState() => _homescreen();
}
class _homescreen extends State<HomeScreen>{
  TextEditingController _height = TextEditingController();
  TextEditingController _weight = TextEditingController();
  double result = 0;
  String txtResult = "";
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("BMI Calculator"),centerTitle: true,elevation: 0,),
      backgroundColor: minHex,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(left:20)),
            SizedBox(height:40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(width:150,
                decoration: BoxDecoration(
                  border: Border.all(color:Colors.grey),
                ),
                margin: const EdgeInsets.only(left:10),
                padding: EdgeInsets.only(left:3),
                child:TextField(
                  controller: _height,
                  style: TextStyle(
                    fontSize:20,
                    color: accHex
                  ),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Height(m/cms)",
                    hintStyle: TextStyle(
                      fontSize:20,
                      color:Color.fromARGB(255, 227, 222, 222)
                    )
                  ),
        
                )),
                Container(width:150,
                decoration: BoxDecoration(
                  border: Border.all(color:Colors.grey),
                ),
                padding: EdgeInsets.only(left:8),
                child:TextField(
                  controller: _weight,
                  style: TextStyle(
                    fontSize:20,
                    color: accHex
                  ),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Weight(kgs)",
                    hintStyle: TextStyle(
                      fontSize:20,
                      color:Color.fromARGB(255, 227, 222, 222)
                    )
                  ),
                ))
              ]
            ),
            SizedBox(
              height:30,), 
            GestureDetector(
              onTap: (){
                double h = double.parse(_height.text);
                double w = double.parse(_weight.text);
                setState((){
                  if (h>50){
                    h=h/100;
                  }
                  result= w/(h*h);
                  if(result>25){
                    txtResult = "You\'re Over Weight";
                  }
                  else if(result>=18.5 && result<=25){
                    txtResult = "You\'re Normal";
                  }
                  else{
                    txtResult = "You\'re Under Weight";
                  }
              });
              },
              child: Container(child:Text("Calculate",
              style:TextStyle(fontSize: 22,color:accHex,fontWeight: FontWeight.bold)
              )),
            ),
              
            SizedBox(
            height:40,), 
            Container(child:Text(result.toStringAsFixed(2),
            style:TextStyle(fontSize: 22,color:accHex,fontWeight: FontWeight.bold)
            )),
            SizedBox(
              height:40,),
              Visibility(visible:txtResult.isNotEmpty,child: Container(child:Text(txtResult,
              style:TextStyle(fontSize: 22,color:accHex,fontWeight: FontWeight.bold)
              ))) 
              ,
            leftBar(barwidth: 40,margTop: 70),
            RightBar(barwidth: 80, margTop: 0),
            leftBar(barwidth: 60,margTop: 30),
            RightBar(barwidth: 60, margTop: 0),
            leftBar(barwidth: 80,margTop:30),
            RightBar(barwidth: 40, margTop: 0), 
          ],
          
        ),
      ),
      );
    
}

  
}
