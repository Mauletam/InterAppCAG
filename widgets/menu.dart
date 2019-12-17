import 'package:flutter/material.dart';

import '../providers/menu_provider.dart';
import '../utils/icon_string_util.dart';

Widget menu() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Intersalesianos App'),
            ),
            ...(listaItems(snapshot.data, context)),
          ],
        );
      },
    );
  }

  List<Widget> listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];

    data.forEach(
      (opt) {
        final widgetTemp = ListTile(
          title: Text(opt['texto']),
          leading: getIcon(opt['icon']),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.pushNamed(context, opt['ruta']);
          },
        );

        opciones.add(widgetTemp);
      },
    );
    return opciones;
  }