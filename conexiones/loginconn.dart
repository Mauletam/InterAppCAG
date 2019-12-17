import 'package:flutter/material.dart';

import 'network.dart';

const String ip = '192.168.0.54';
const String urlapp = 'http://$ip:8080/concurso/';
const String setU = 'setUser.jsp';
const String getU = 'getUsers.jsp';

class LogIN {
  Future<dynamic> getUsers(
      String username, String pwd, BuildContext context) async {
        String gU = '$urlapp$getU?username=$username&pwd=$pwd';
    Network network = Network(gU);
    print("Esta es la url: "+gU);
    String userData = await network.getData();
    return userData;
  }

  Future<dynamic> setUser(String email, String username, String passwd,
      String colegio, BuildContext context) async {
    String sU =
        '$urlapp$setU?username=$username&passwd=$passwd&email=$email&colegio=$colegio';
    print("Esta es la url: "+sU);
    Network network = Network(sU);
    String userData = await network.getData();
    return userData;
  }
}