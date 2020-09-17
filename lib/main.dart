import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Sign In',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 32, wordSpacing: 2.0, ),
            ),
            Form(child: Column(children: [
              Container(
                  margin: EdgeInsets.all(25.0),

                  child: Align(
                    child: Text('Email'),
                    alignment: Alignment.topCenter,

                  )


              ),

              TextFormField(

                decoration:  InputDecoration(icon: Icon(Icons.send),
                    hintText: 'Hint Text',
                    counterText: '0 characters',
                    border: const OutlineInputBorder(),
                    contentPadding: const EdgeInsets.all(20.0)


                ),

              ),
              Container(
                  child: Align(
                    child: Text(''),
                    alignment: Alignment.centerLeft,
                  )
              ),
              Text('Password'),
              TextFormField(

                decoration: InputDecoration(
                    icon: Icon(Icons.send),
                    hintText: 'Ingresa Contraseña',
                    fillColor: Colors.black,
                    counterText: '0 characters',
                    border: const OutlineInputBorder(),
                    contentPadding: const EdgeInsets.all(20.0)),

              ),

              RaisedButton(onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondRoute()),
                )
              },
                color: Colors.blue,
                child: Text('LOGIN'),



              )
            ],)
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
      backgroundColor: Colors.white,
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,


        title: Text("Noticias",),

      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            // Navigate back to first route when tapped.
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}


