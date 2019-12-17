import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AcercaDePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Acerca de'),
        backgroundColor: Colors.blueGrey,
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _card(),
        ],
      ),
    );
  }

  Widget _card() {
    final card = Container(
      //  clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage(
                'https://www.eluniversal.com.mx/sites/default/files/styles/f03-651x400/public/2019/11/18/amlo_gabinete_ovidio.jpg?itok=CrdRfvmF'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 350.0,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.symmetric(),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 12.0),
              child: Column(
                children: <Widget>[
                  _textoAcercaDe(),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 180.0,
                      ),
                      FlatButton(
                        child: Container(
                          width: 50.0,
                          child: Image.network(
                              'https://www.freesoftwarefiles.com/wp-content/uploads/2017/10/Facebook-Desktop-Version-Free-Download.png'),
                        ),
                        onPressed: () {
                          return launch('https://www.facebook.com/EnWeb-Solutions-101963357976345/?ref=page_internal');
                        },
                      ),
                      FlatButton(
                        child: Container(
                          width: 60.0,
                          child: Image.network(
                              'https://cdn.icon-icons.com/icons2/1584/PNG/128/3721672-instagram_108066.png'),
                        ),
                        onPressed: () {
                          return launch('https://www.instagram.com/enweb_solutions/');
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.blueGrey,
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              spreadRadius: 2.0,
              offset: Offset(2.0, 10.0)),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }

  _textoAcercaDe() {
    return Container(
      child: Column(
        children: <Widget>[
          Divider(
            color: Colors.blueGrey,
            height: 10.0,
          ),
          Text(
            '¿Quiénes somos?',
            style: TextStyle(
              fontSize: 28.0,
              color: Colors.white,
            ),
          ),
          Divider(
            color: Colors.blueGrey,
            height: 5.0,
          ),
          Text(
            'Somos un grupo de estudiantes cuya motivación es aprender e innovar nuestro entorno y buscar soluciones tecnológicas a situaciones que nos rodean.',
            style: TextStyle(fontSize: 18.0, color: Colors.white, height: 1.35),
            textAlign: TextAlign.justify,
          ),
          Divider(
            color: Colors.blueGrey,
            height: 10.0,
          ),
          Text(
            'Enjambre Web Solutions surgió en un laboratorio de cómputo, después de haber sido estafados debido a un conjunto de malas decisiones y malentendidos.',
            style: TextStyle(fontSize: 18.0, color: Colors.white, height: 1.35),
            textAlign: TextAlign.justify,
          ),
          Divider(
            color: Colors.blueGrey,
            height: 10.0,
          ),
          Text(
            'Estamos comprometidos con ofrecer un servicio eficaz y de calidad para cualquier tipo de trabajo requerido por nuestros clientes y satisfacer sus necesidades de la manera más óptima, siempre buscando mejorar nuestras técnicas e instrumentos de trabajo. ',
            style: TextStyle(fontSize: 18.0, color: Colors.white, height: 1.35),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
