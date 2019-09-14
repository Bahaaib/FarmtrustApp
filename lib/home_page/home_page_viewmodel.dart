import 'package:flutter/material.dart';
import 'package:farmtrust_app/home_page/home_page.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/services.dart';


abstract class HomePageViewModel extends State<HomePage> {
  void performScan() async {
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
    showScanResultDialog('Scanned', scanResult);
  }

  void showScanResultDialog(String title, String message);
}
