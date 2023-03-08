import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:idk/services/api_service.dart';
import 'package:idk/services/provider.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QrScannerScreen extends ConsumerStatefulWidget {
  const QrScannerScreen({super.key});

  @override
  ConsumerState<QrScannerScreen> createState() => _QrScannerScreenState();
}

class _QrScannerScreenState extends ConsumerState<QrScannerScreen> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? controller;

  // In order to get hot reload to work we need to pause the camera if the platform
  // is android, or resume the camera if the platform is iOS.
  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    } else if (Platform.isIOS) {
      controller!.resumeCamera();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: QRView(
        key: qrKey,
        onQRViewCreated: _onQRViewCreated,
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) async {
      controller.pauseCamera();
      result = scanData;
      print(result!.code);
      if (result!.format != BarcodeFormat.qrcode) {
        showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
            title: const Text('Failure'),
            content: const Text('The thing scanned is not a qrcode'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  controller.resumeCamera();
                },
                child: const Text('OK'),
              ),
            ],
          ),
        );
        return;
      }
      final apiResult = await ref.read<ApiService>(apiServiceProvider).getQrScanResult(qrCodeContent: result!.code!);
      apiResult.fold(
        (failure) => showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
            title: const Text('Failure'),
            content: Text('The api call failed with message: ${failure.message}'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  controller.resumeCamera();
                },
                child: const Text('OK'),
              ),
            ],
          ),
        ),
        (responseData) => showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
            title: const Text('Success'),
            content: Text(
                'User Name: ${responseData.name}\nACM member: ${responseData.memberStatus ? 'Yes' : 'No'}\n Event Name: ${responseData.eventName}'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  controller.resumeCamera();
                },
                child: const Text('OK'),
              ),
            ],
          ),
        ),
      );
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
