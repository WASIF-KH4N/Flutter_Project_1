import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   var arrNames=['Wasif','Wajahat','Taimoor','Hassan','Saad','Hamza','Anas','Bilal','Zeeshan'];
   var arrSeatNo=['B22110006125','B22110006177','B22110006168','B22110006055','B22110006141','B22110006047','B22110006089','B22110006093','B22110006127'];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar:AppBar(
                title: Center(child: Text("Students Data", style: TextStyle(color: Colors.white,fontFamily: 'A',fontSize:26,fontWeight: FontWeight.w400),)),
                backgroundColor:Colors.cyan
            ),
        body: ListView.separated(itemBuilder:(context,index){
          return ListTile(
          leading: Text('${index+1}'),
          title: Text(arrNames[index]),
          subtitle: Text(arrSeatNo[index]),
          trailing:Icon(Icons.account_balance),
    );
    },
    itemCount: arrNames.length,
    separatorBuilder: (context,index){
          return Divider(height:100,thickness:5);
        }
          ),
      ),
    );
  }
}
