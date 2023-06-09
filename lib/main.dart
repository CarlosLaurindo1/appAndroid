import 'package:flutter/material.dart';

void main() {
  //instancia da aplicação, deve ser iniciado com o run app (rodar a aplicação)
  //Deixar separado do resto do projeto
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  // A cada nova tela (state less widget não processa informações em tempo real é estático/State full widget é mutável )
  // State less (página de login, documentos estáticos)

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //titulo da aplicação
      title: 'Flutter Demo',
      //padronização de estilização, como cores, idiomas, etc.
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        // Componentização (instruções básicas de estilização)
        primarySwatch: Colors.green,
      ),
      //Busca os dados que são exigidos pela classe do MyHomePage e efetua o preenchimento da Variável criada na mesma classe, aqui dentro
      home: const MyHomePage(title: 'Título dessa página',),
    );
  }
}

class MyHomePage extends StatefulWidget {
  //Classe de extensão (receberá novas classes)
  const MyHomePage({super.key, required this.title});
  //Parâmetro de propriedade obrigatória

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter = _counter+ 2;
    });
  }

  @override
  //estrutura do dart para passar o contexto da aplicação
  //Context é a estrutura padrão para renderizar 
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Center(child: Text(widget.title)),
        //Aqui dentro eu posso colocar os parâmetros pertinentes a este widget sem afetar a todos os demais
        backgroundColor: Colors.red,
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).

          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Fica clicando no mais, para ver o que rola:',
              //Aqui não preciso colocar como uma constante, pois a classe pai já é uma
              style: TextStyle(color:Colors.black12, 
              fontSize: 22),
            ),
            Text(
              //Recebe a interpolação da variável counter criada na classe _MyHomePageState
              '$_counter',
              //Aqui por sua vez, como o pai não é uma constante, precisamos definir como uma
              style: const TextStyle(color:Colors.blue, 
              fontSize: 32),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Adicionar mais 2',
        child: const Icon(Icons.add_chart),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
