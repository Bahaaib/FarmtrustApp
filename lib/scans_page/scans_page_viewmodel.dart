import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/material.dart';
import 'package:farmtrust_app/scans_page/scans_page.dart';
import 'package:flutter/services.dart';

abstract class ScansPageViewModel extends State<ScansPage> {
  void scanPressed() async {
    String scanResult = "Scan Error: Make sure you're scanning the right code";
    try {
      final String barcode = await BarcodeScanner.scan();
      scanResult = barcode;
    } on PlatformException catch (e) {
      if (e.code == BarcodeScanner.CameraAccessDenied) {
        scanResult = 'You did not grant the camera permission!';
      } else {
        scanResult = 'Unknown error: $e';
      }
    } on FormatException {
      print('Scan Cancelled');
    } on Exception catch (e) {
      scanResult = 'Error: $e';
    }
    showMessageDialog('scanned', scanResult);
  }

  void showMessageDialog(String title, String message);
}
