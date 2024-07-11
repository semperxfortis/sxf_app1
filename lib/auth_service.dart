import 'package:flutter/material.dart';

class AuthService with ChangeNotifier {
  // Lista de usuarios predefinidos
  final Map<String, String> _users = {
    'ma2024': '160994',
    'jc2024': '260491',
    'ah2024': '290895',
    'dg2024': '100993',
    'rg2024': '050490',
    'by2024': '020478',
    'ga2024': '220365',
    'cm2024': '081277',
    'ld2024': '060477',
    'if2024': '220682',
    'jm2024': '290482',
    'em2024': '091073',
    'ec2024': '050990',
    'ls2024': '040993',
    'ml2024': '050124',
    'am2024': '100185',
    'ce2024': '290976',
    'clm2024': '170990',
    'ag2024': '210373',
    'bm2024': '100879',
    'sxf2024': '072024',
    'user': 'pass',
    'user10': 'sxf3179',
    'user11': 'sxf7573',
    'user12': 'sxf3249',
    'user13': 'sxf5564',
    'user14': 'sxf4861',
    'user15': 'sxf3874',
    'user16': 'sxf2993',
    'user17': 'sxf4519',
    'user18': 'sxf1231',
    'user19': 'sxf2612',
    'user20': 'sxf4012',
    'user21': 'sxf1911',
    'user22': 'sxf4350',
    'user23': 'sxf5848',
    'user24': 'sxf4496',
    'user25': 'sxf7981',
    'user26': 'sxf2177',
    'user27': 'sxf5981',
    'user28': 'sxf1857',
    'user29': 'sxf6291',
  };

  String? _user;

  String? get user => _user;

  // Método para iniciar sesión
  Future<void> login(String email, String password) async {
    if (_users.containsKey(email) && _users[email] == password) {
      _user = email;
      notifyListeners();
    } else {
      throw AuthException('Invalid user or password');
    }
  }

  // Método para cerrar sesión
  Future<void> logout() async {
    _user = null;
    notifyListeners();
  }
}

class AuthException implements Exception {
  final String message;
  AuthException(this.message);
}
