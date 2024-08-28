import 'dart:io';

import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class LocationPermissionHandler {
  LocationPermissionHandler(this.context);

  final BuildContext context;
  late PermissionStatus _status;

  bool get _granted => _status == PermissionStatus.granted;

  bool get _denied => _status == PermissionStatus.denied;

  bool get _permanentlyDenied => _status == PermissionStatus.permanentlyDenied;

  Future<bool> get request async {
    _status = await Permission.locationWhenInUse.status;
    if (_granted) return true;
    if (_permanentlyDenied) await _showSettingDialog();
    if (_denied) return (await _onDenied)!;
    exit(0);
  }

  Future<bool?> get _onDenied async {
    await _showRequestDialog();
    if (_granted) return true;
    await _showSettingDialog();
    return _granted;
  }

  Future<void> _showRequestDialog() async {
    const content = 'Please allow location permission to use this app';
    final action = TextButton(
        onPressed: () => Navigator.pop(context), child: const Text('Okay'));
    await _showDialog(content, action);
    _status = await Permission.locationWhenInUse.request();
  }

  Future<void> _showSettingDialog() async {
    const content =
        'Location permission has been denied. Please allow location permission in the app settings and reopen the app again.';
    final action = TextButton(
        onPressed: _openSettingsAndExit, child: const Text('Open Settings'));

    await _showDialog(content, action);
  }

  Future<void> _openSettingsAndExit() async {
    await openAppSettings();
    exit(0);
  }

  Future<void> _showDialog(String content, Widget action) async {
    await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('Location Permission'),
        content: Text(content),
        actions: [action],
      ),
    );
  }
}
