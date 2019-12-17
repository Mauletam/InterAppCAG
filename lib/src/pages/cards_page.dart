import 'package:flutter/material.dart';

class CardPage  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Noticias'),
            backgroundColor: Colors.blueGrey,
        ),

    body: ListView(
      padding: EdgeInsets.all(10),
      children: <Widget>[
        _cardTipo2(),
        SizedBox(height: 20.0,),
        _cardTipo2(),
        SizedBox(height: 20.0,),
        _cardTipo2(),
        SizedBox(height: 20.0,),
        _cardTipo2(),
        SizedBox(height: 20.0,),

      ],



    ),
    );
  }

//  Widget _cardTipo1() {


//     return Card(
//       elevation: 10.0,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
//       child: Column(
//         children: <Widget>[
//           ListTile(
//             leading: Icon(Icons.photo_album, color: Colors.blue,),
//             title: Text('Hola'),
//             subtitle: Text('Hey buenas a todos guapísimos aquí Vegetta 777 en un gameplay directo de planeta Vegetta y en el video de hoy os voy a enseñar cómo ordeñar vacas.'),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: <Widget>[
//               FlatButton(
//                 child: Text('Cancelar'),
//                 onPressed: (){},
//               ),
//               FlatButton(
//                 child: Text('Ok'),
//                 onPressed: (){},
//               )


//             ],)
//         ],),

//     );
//   }

 Widget _cardTipo2() {

   final card = Container(
    //  clipBehavior: Clip.antiAlias,
     child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage('http://www.salesianoicg.edu.mx/images/inters_01.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 350.0,
            fit: BoxFit.cover,
          ),
              Container(
                padding: EdgeInsets.symmetric(),
                child: Column(
                  children: <Widget>[
                    Divider(color: Colors.blueGrey, height: 10.0,),
                    Text('Titular', style: TextStyle(
                      fontSize: 28.0,
                      color: Colors.white,
                    ),),
                    Divider(color: Colors.blueGrey, height: 5.0,),
                    Text('Subtítulo', style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white
                    )),
                    Divider(color: Colors.blueGrey, height: 5.0,),
                  ],
                )
              ), 
        ],
     ),




   );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.blueGrey,
        boxShadow: <BoxShadow> [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0)
          )
        ]
       ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
      );

  }

}