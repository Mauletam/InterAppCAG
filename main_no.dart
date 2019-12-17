// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:rflutter_alert/rflutter_alert.dart';

// import './utils/restart.dart';
// import './pages/home.dart';
// import './conexiones/loginconn.dart';

// void main() {
//   runApp(new HotRestartController(child: new MyApp()));
// }

// bool logInT = true;

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home:  cuerpo(),
//     );
//   }
// }

// Widget cuerpo() {
//   if (logInT) {
//     return MyHomePage();
//   } else {
//     return HomePage();
//   }
// }

// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   final colRegistro = TextEditingController();
//   final emailRegistro = TextEditingController();
//   final userRegistro = TextEditingController();
//   final pwdRegistro = TextEditingController();
//   final userLog = TextEditingController();
//   final pwdLog = TextEditingController();

//   TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

//   final _formKey2 = GlobalKey<FormState>();

//   _alertIN(context) {
//     Alert(
//             context: context,
//             title: "ERROR",
//             desc: "Usuario o Contraseña Incorrectos")
//         .show();
//   }
//   _alertReg(context) {
//     Alert(
//             context: context,
//             title: "ERROR",
//             desc: "Usuario o Correo ya registrados")
//         .show();
//   }

//   void logIn() async {
//     Text uLog = Text(userLog.text);
//     String emailLog = uLog.data;
//     Text pLog = Text(pwdLog.text);
//     String passLog = pLog.data;
//     var result = await LogIN().getUsers(emailLog, passLog, context);
//     print("Este es el RESULT" + result);
//     var logMap = json.decode(result);
//     var condicion = logMap[0]['LOGIN'];
//     if(condicion == 'succesful') {
//       logInT = false;
//       HotRestartController.performHotRestart(context);
//     }else if (condicion == 'unsuccesful') {
//       _alertIN(context);
//     }
//   }

//   void registro() async {
//     Text emails = Text(emailRegistro.text);
//     String email = emails.data;
//     Text users = Text(userRegistro.text);
//     String user = users.data;
//     Text pass = Text(pwdRegistro.text);
//     String password = pass.data;
//     Text cols = Text(colRegistro.text);
//     String col = cols.data;
//     var result = await LogIN().setUser(email, user, password, col, context);
//     print("Este es el RESULT" + result);
//     var regMap = json. decode(result);
//     var condicion = regMap[0]['LOGEdit'];
//     if(condicion == 'Succesful') {
//       logInT = false;
//       HotRestartController.performHotRestart(context);
//     }else if (condicion == 'unsuccesful') {
//       _alertIN(context);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final emailField = TextFormField(
//       controller: userLog,
//       validator: (value) {
//         if (value.isEmpty) {
//           return 'Please enter an email or Username';
//         }
//       },
//       obscureText: false,
//       style: style,
//       decoration: InputDecoration(
//           contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
//           hintText: "Email/Username",
//           border:
//               OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
//     );

//     final passwordField = TextFormField(
//       controller: pwdLog,
//       validator: (value) {
//         if (value.isEmpty) {
//           return 'Please enter your password';
//         }
//       },
//       obscureText: true,
//       style: style,
//       decoration: InputDecoration(
//           contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
//           hintText: "Password",
//           border:
//               OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
//     );

//     final loginButon = Material(
//       elevation: 5.0,
//       borderRadius: BorderRadius.circular(30.0),
//       color: Colors.blueGrey,
//       child: MaterialButton(
//         minWidth: MediaQuery.of(context).size.width,
//         padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
//         onPressed: () {
//           if (_formKey2.currentState.validate()) {
//             logIn();
//           }
//         },
//         child: Text("Iniciar sesion",
//             textAlign: TextAlign.center,
//             style: style.copyWith(
//                 color: Colors.white, fontWeight: FontWeight.bold)),
//       ),
//     );

//     final signInButton = Material(
//       elevation: 5.0,
//       borderRadius: BorderRadius.circular(30.0),
//       color: Color(0xffffffff),
//       child: MaterialButton(
//         minWidth: MediaQuery.of(context).size.width,
//         padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
//         onPressed: _signIn,
//         child: Text("Registrarme",
//             textAlign: TextAlign.center,
//             style: style.copyWith(
//                 color: Colors.blueGrey, fontWeight: FontWeight.bold)),
//       ),
//     );

//     return Scaffold(
//         body: SingleChildScrollView(
//       child: Form(
//         key: _formKey2,
//         child: Center(
//           child: Container(
//             color: Colors.white,
//             child: Padding(
//               padding: const EdgeInsets.all(36.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   SizedBox(
//                     height: 155.0,
//                     child: Image.asset(
//                       "assets/logo.png",
//                       fit: BoxFit.contain,
//                     ),
//                   ),
//                   SizedBox(height: 45.0),
//                   emailField,
//                   SizedBox(height: 25.0),
//                   passwordField,
//                   SizedBox(
//                     height: 35.0,
//                   ),
//                   loginButon,
//                   SizedBox(
//                     height: 25.0,
//                   ),
//                   signInButton,
//                   SizedBox(
//                     height: 15.0,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     ));
//   }

//   void _signIn() {
//     final _formKey = GlobalKey<FormState>();

//     final emailField = TextFormField(
//       controller: emailRegistro,
//       validator: (value) {
//         if (value.isEmpty) {
//           return 'Please enter an email';
//         }
//       },
//       obscureText: false,
//       style: style,
//       decoration: InputDecoration(
//           contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
//           hintText: "Email",
//           border:
//               OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
//     );

//     final passwordField = TextFormField(
//       controller: pwdRegistro,
//       validator: (value) {
//         if (value.isEmpty) {
//           return 'Please enter a paswword';
//         }
//       },
//       obscureText: true,
//       style: style,
//       decoration: InputDecoration(
//           contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
//           hintText: "Password",
//           border:
//               OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
//     );

//     final username = TextFormField(
//       controller: userRegistro,
//       validator: (value) {
//         if (value.isEmpty) {
//           return 'Please enter a username';
//         }
//       },
//       obscureText: false,
//       style: style,
//       decoration: InputDecoration(
//           contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
//           hintText: "Username",
//           border:
//               OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
//     );

//     final colegio = TextFormField(
//       controller: colRegistro,
//       validator: (value) {
//         if (value.isEmpty) {
//           return 'Please enter your college';
//         }
//       },
//       obscureText: false,
//       style: style,
//       decoration: InputDecoration(
//           contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
//           hintText: "Colegio",
//           border:
//               OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
//     );

//     final loginButon = Material(
//       elevation: 5.0,
//       borderRadius: BorderRadius.circular(30.0),
//       color: Colors.blueGrey,
//       child: MaterialButton(
//         minWidth: MediaQuery.of(context).size.width,
//         padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
//         onPressed: () {
//           if (_formKey.currentState.validate()) {
//             registro();
//           }
//         },
//         child: Text("Registrarme",
//             textAlign: TextAlign.center,
//             style: style.copyWith(
//                 color: Colors.white, fontWeight: FontWeight.bold)),
//       ),
//     );

//     Navigator.of(context).push(
//       MaterialPageRoute(
//         builder: (BuildContext context) {
//           return Scaffold(
//             body: SingleChildScrollView(
//               child: Form(
//                 key: _formKey,
//                 child: Center(
//                   child: Container(
//                     color: Colors.white,
//                     child: Padding(
//                       padding: const EdgeInsets.all(36.0),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: <Widget>[
//                           SizedBox(
//                             height: 155.0,
//                             child: Image.asset(
//                               "assets/logo.png",
//                               fit: BoxFit.contain,
//                             ),
//                           ),
//                           SizedBox(height: 45.0),
//                           emailField,
//                           SizedBox(height: 25.0),
//                           colegio,
//                           SizedBox(height: 25.0),
//                           username,
//                           SizedBox(height: 25.0),
//                           passwordField,
//                           SizedBox(height: 35.0),
//                           loginButon,
//                           SizedBox(height: 15.0),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

// class Colegio extends StatefulWidget {
//   @override
//   _ColegioState createState() => _ColegioState();
// }

// class _ColegioState extends State<Colegio> {
//   String dropdownValue = 'One';
//   Widget build(BuildContext context) {
//     return DropdownButton<String>(
//       value: dropdownValue,
//       icon: Icon(Icons.arrow_downward),
//       iconSize: 24,
//       elevation: 16,
//       style: TextStyle(color: Colors.deepPurple),
//       underline: Container(
//         height: 2,
//         color: Colors.deepPurpleAccent,
//       ),
//       onChanged: (String newValue) {
//         setState(() {
//           dropdownValue = newValue;
//         });
//       },
//       items: <String>['One', 'Two', 'Free', 'Four']
//           .map<DropdownMenuItem<String>>((String value) {
//         return DropdownMenuItem<String>(
//           value: value,
//           child: Text(value),
//         );
//       }).toList(),
//     );
//   }
// } b
