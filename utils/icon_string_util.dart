import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'home'           : Icons.home,
  'favorite'       : Icons.favorite,
  'location_city'  : Icons.location_city,
  'directions_run' : Icons.directions_run,
  'place'          : Icons.place,
  'note'           : Icons.note,
  'chat_bubble'    : Icons.chat_bubble,
  'info'           : Icons.info,
  'settings'       : Icons.settings,
};

Icon getIcon(String nombreIcono) {
  return Icon(_icons[nombreIcono]);
}