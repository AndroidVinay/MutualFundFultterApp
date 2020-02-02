import 'mf_category.dart';
import 'package:flutter/material.dart';

class CatData{

  List<MfCategory> data=[
    MfCategory('Low-cost Index funds', 'Long term wealth creation at low cost', Icon(Icons.show_chart,color: Colors.green)),
  MfCategory('Smart beta', 'Hybrid of active and passive', Icon(Icons.star,color: Colors.orange,)),
  MfCategory('Equity+Debt', 'Stable income and growth', Icon(Icons.security,color: Colors.deepPurpleAccent,)),
  MfCategory('Save Taxes', 'Build wealth and save taxes', Icon(Icons.card_giftcard,color: Colors.red,)),
  MfCategory('Alternatives to bank FDs', 'Tax efficient, better returns than FDs', Icon(Icons.move_to_inbox,color: Colors.blue,))
  ];

}