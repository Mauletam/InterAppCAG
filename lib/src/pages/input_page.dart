import 'package:flutter/material.dart';


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String _nombre = '';
  String _email = '';
  String _fecha = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input'),
      ),

      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 
        20),
        children: <Widget>[
          _crearInput(), 
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearFecha(context),
          Divider(),
          _crearPersona(),


        ],
      ),      
    );
  }

  Widget _crearInput() {

    return TextField(
      // autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        counter: Text('Letras 0'),
        hintText:'Nombre de la persona',
        labelText: 'Nombre',
        helperText: 'Solo el nombre',
        suffixIcon: Icon(Icons.accessibility),
        icon: Icon(Icons.account_circle),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0)
        )        
      ),
      onChanged: (valor){
        setState(() {
           _nombre = valor;
        });
      },
    );
  }

  _crearEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        counter: Text('Letras 0'),
        hintText:'Email',
        labelText: 'Email',
        suffixIcon: Icon(Icons.alternate_email),
        icon: Icon(Icons.email),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0)
        )        
      ),
      onChanged: (valor){
        setState(() {
           _email = valor;
        });
      },
    );
  }

  _crearPassword() {
    return TextField(
      obscureText: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        counter: Text('Letras 0'),
        hintText:'Password',
        labelText: 'Password',
        suffixIcon: Icon(Icons.lock_open),
        icon: Icon(Icons.lock),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0)
        )        
      ),
      onChanged: (valor){
        setState(() {
           _email = valor;
        });
      },
    );
  }

  _crearFecha( BuildContext ) {
    return TextField(
      enableInteractiveSelection: false,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        counter: Text('Letras 0'),
        hintText:'Fecha de Nacimiento',
        labelText: 'Fecha de Nacimiento',
        suffixIcon: Icon(Icons.date_range),
        icon: Icon(Icons.calendar_today),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0)
        )        
      ),
      onTap: (){

        FocusScope.of(context).requestFocus(new FocusNode()); 
        _selectDate( context );

      },
    );
  }

  _crearPersona() {
    return ListTile(
      title: Text('Nombre de la persona: $_nombre'),
      subtitle: Text('Email: $_email'),

    );
  }

 _selectDate(BuildContext context) async {

   DateTime picked = await showDatePicker(
     context: context,
     initialDate: new DateTime.now(),
     firstDate: new DateTime(2018),
     lastDate: new DateTime(2025)


   );

  }


}