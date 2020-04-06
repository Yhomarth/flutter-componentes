
import 'package:flutter/material.dart';

final Map<String, IconData> _icons = {
    'add_alert'      : Icons.add_alert,
    'accessibility'  : Icons.accessibility, 
    'folder_open'    : Icons.folder_open,
    'donut_large'    : Icons.donut_large,
    'Input'          : Icons.input,
    'lista'          : Icons.list,
    'tune'           : Icons.tune
};


Icon getIconFromString(nombreIcono) => Icon(_icons[nombreIcono], color: Colors.blue, );
