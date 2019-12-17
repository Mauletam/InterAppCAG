import 'package:flutter/material.dart';

import '../pages/home.dart';
import '../pages/acercaDe.dart';
import '../pages/comunidad.dart';
import '../pages/configuracion.dart';
import '../pages/delegaciones.dart';
import '../pages/deportes.dart';
import '../pages/favoritos.dart';
import '../pages/mapa.dart';
import '../pages/noticias.dart';

Map<String, WidgetBuilder> getApliccationRoutes() {
  return <String, WidgetBuilder>{
    'home'         : (BuildContext context) => HomePage(),
    'favorite'     : (BuildContext context) => FavoritosPage(),
    'delegaciones' : (BuildContext context) => DelegacionesPage(),
    'deportes'     : (BuildContext context) => DeportesPage(),
    'noticias'     : (BuildContext context) => NoticiasPage(),
    'mapa'         : (BuildContext context) => MapaPage(),
    'comunidad'    : (BuildContext context) => ComunidadPage(),
    'acercaDe'     : (BuildContext context) => AcercaDePage(),
    'configuracion': (BuildContext context) => ConfiguracionPage(),
  };
}