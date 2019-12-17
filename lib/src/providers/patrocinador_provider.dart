import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _PatrocinadoresProvider {
  List<dynamic> patrocinadores = [];

  _PatrocinadoresProvider() {
    // cargardata();
  }

  Future<List<dynamic>> cargarDataPatro() async {
    final resp = await rootBundle.loadString('data/colab_opts.json');

    Map dataMap = json.decode(resp);
    patrocinadores = dataMap['rutas'];

    return patrocinadores;
  }
}

final patrocinadoresProvider = new _PatrocinadoresProvider();
