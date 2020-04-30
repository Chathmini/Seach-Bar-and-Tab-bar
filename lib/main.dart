import 'package:flutter/material.dart';
import './UI/page1.dart';
import './UI/page2.dart';
import './UI/page3.dart';

void main(){
  runApp(new MaterialApp(
  title: "Tab bar and search bar",
  home:Home(),
 
  )
);}
 class Home extends StatefulWidget{
   @override
  State<StatefulWidget>createState(){
    return new HomeState();
  }
}
class HomeState extends State<Home> {
  Icon cusIcon = Icon(Icons.search);
  Widget cusSearchBar = Text("Search bar");
  
   @override
  Widget build(BuildContext context) {
   return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: cusSearchBar,
          leading:IconButton(icon: Icon(Icons.arrow_back), onPressed: null),
        actions: <Widget>[
          IconButton(icon:cusIcon,
           onPressed: (){
             setState(() {
               if(this.cusIcon.icon == Icons.search){
                  this.cusIcon=Icon(Icons.cancel);
                  this.cusSearchBar=TextField(
                    textInputAction: TextInputAction.go,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search"
                    ),
                    style: TextStyle(
                      color:Colors.black,
                      fontSize:16,
                    ),
                  );
               }
               else{
                 this.cusIcon=Icon(Icons.search);
                 this.cusSearchBar=Text ("Search Bar");
               }
             });
          },),
        ],
          elevation: 0,
          bottom: TabBar(
              unselectedLabelColor: Colors.lightBlue[50],
              indicatorSize: TabBarIndicatorSize.label,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.green),
              tabs: [
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: Colors.black, width: 1)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("page 1",
                       style:TextStyle(color:Colors.black,fontSize:10,),
                       ),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.black, width: 1)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("page 2",
                      style:TextStyle(color:Colors.black,fontSize:10),)
                    ),
                  ),
                ),
               
                 Tab(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.black, width: 1)),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text("page 3",
                       style:TextStyle(color:Colors.black,fontSize:10),),
                    ),
                  ),
                ),
               
              ]),
        ),
        body: TabBarView(children: [
         Page1(),
         Page2(),
         Page3(),
         
        ]),
      ));
    

  }
}
