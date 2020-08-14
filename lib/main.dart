import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mapa_ufsm/screens/android/mapa_ufsm.dart';

void main() {
  if(Platform.isAndroid){
    runApp(MapaUFSM());

  }
}

