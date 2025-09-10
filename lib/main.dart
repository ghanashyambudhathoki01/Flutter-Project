import "package:flutter/material.dart";

void main() {
  runApp(
    MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    
    ),
  );
}
class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    print("Rerun");
    return Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Image
                Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(150),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage("https://media.istockphoto.com/id/178279163/photo/tally-counter.jpg?s=1024x1024&w=is&k=20&c=c3UrgV5r1WEX1r5sYhrZytj6Ym0JL1MntdGwalLkzYE="))
                  ),
                ),

                // CircleAvatar(
                //   backgroundImage: NetworkImage("https://media.istockphoto.com/id/178279163/photo/tally-counter.jpg?s=1024x1024&w=is&k=20&c=c3UrgV5r1WEX1r5sYhrZytj6Ym0JL1MntdGwalLkzYE=")
                //   ,
                //   radius: 150,
                //   ),
        
                // Image.network(
                //   "https://media.istockphoto.com/id/178279163/photo/tally-counter.jpg?s=1024x1024&w=is&k=20&c=c3UrgV5r1WEX1r5sYhrZytj6Ym0JL1MntdGwalLkzYE=",
                //   width: 200,
                //   height: 200,
                
                // ),
                // Text
                Text("Counter App", style: TextStyle(
                  fontSize: 30,
                  color: Colors.lightGreen,
                  ) ,),
                // Button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                   backgroundColor: Colors.amber,
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_){
                      return CounterScreen();
                    }));
                  }, 
                child: Text("Click for next screen"),
                
                )
              ],
            ),
          ),
        ),
      );
  }
  
}


class CounterScreen extends StatefulWidget {
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  var data = 0.0;

  @override
  Widget build(BuildContext context) {
    print("I am rebuilding");
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to the counter app"),
        
      ),
      body:Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                increase();
              }, child: Text("+"),),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(onPressed: (){
                  divide();
                }, child: Text("/")),
                Text(data.toString()),
                ElevatedButton(onPressed: (){
                  multiply();
                }, child: Text("*")),

              ],
            ),
            ElevatedButton(onPressed: (){
              decrease();
            }, child: Text("-"))
          ],
        ),
      ),
    );
  }

  void increase(){
    setState(() {
      data = data + 1;
    });
   
   print(data);
  }

  void decrease(){
    setState(() {
      data = data -1;
    });
    print(data);
  }

  void divide(){
    setState(() {
      data = data/2;
    });
  }
   void multiply(){
    setState(() {
      data = data * 2;
    });
  }
}