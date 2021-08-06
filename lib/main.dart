import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var w = Colors.white;
  var b = Colors.black;
  var bl= Colors.blue;
  var r= Colors.red;


  bool passwordVisibile = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: r, title: Text("App Bar", style: TextStyle(color:w)),
        
        
      ),
      body: Container(
        height: double.infinity,
        color: b,
        child: Column(
          children:[SizedBox(height: 10,),
         
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: w),
                borderRadius: BorderRadius.circular(8.0)
              ),
              labelText: "Name",
              labelStyle: TextStyle(fontSize:25,color: w,),
              hintText: "Enter your name",
              hintStyle: TextStyle(fontSize:15,color: w,),
              prefixIcon: Icon(Icons.person_outline,color:Colors.blue)
            ),
            style: TextStyle(color: w),
            keyboardType: TextInputType.text,

          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: w),
                borderRadius: BorderRadius.circular(8.0)
              ),
              labelText: "Email",
              labelStyle: TextStyle(fontSize:25,color: w),
              hintText: "Enter your Email",
              hintStyle: TextStyle(fontSize:15,color: w),
              prefixIcon: Icon(Icons.email,color: Colors.blue)
            ),
            style: TextStyle(color: w),
            keyboardType: TextInputType.emailAddress,

          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: w),
                borderRadius: BorderRadius.circular(8.0)
              ),
              labelText: "Password",
              labelStyle: TextStyle(fontSize:25,color: w),
              hintText: "Enter your password",
              hintStyle: TextStyle(fontSize:15,color: w),
              prefixIcon: Icon(Icons.password,color: Colors.blue),
              suffixIcon: IconButton(
                icon: Icon(
                  passwordVisibile? Icons.visibility: Icons.visibility_off,color: Colors.blue,
                ),
                onPressed: (){
                  setState((){
                    passwordVisibile = !passwordVisibile;
                  });
                },
              )
            ),
            style: TextStyle(color: w),
            keyboardType: TextInputType.visiblePassword,
            obscureText:passwordVisibile,

          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 2, color: w),
                borderRadius: BorderRadius.circular(8.0)
              ),
              labelText: "Phone",
              labelStyle: TextStyle(fontSize:25,color: w),
              hintText: "Enter your Phone",
              hintStyle: TextStyle(fontSize:15,color: w),
              prefixIcon: Icon(Icons.phone,color: Colors.blue)
            ),
            style: TextStyle(color: w),
            keyboardType: TextInputType.number,

          ),
        ),
      ),
          ]
        ),
      ),
      
      floatingActionButton: FloatingActionButton(
        
        backgroundColor: w,
        onPressed: () => setState ((){
         w = w == Colors.white? Colors.black: Colors.white;
         b = b == Colors.black? Colors.white: Colors.black;
         bl = bl == Colors.blue? Colors.red : Colors.blue;
         r = r == Colors.red? Colors.blue: Colors.red;
               
        }),
        child: Icon(Icons.change_circle_outlined,color:b)

      ),
      
      ));
  }
} 


