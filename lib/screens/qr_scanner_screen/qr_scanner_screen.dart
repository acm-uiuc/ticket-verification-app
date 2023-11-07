import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:ticket_verification_app/services/api_service.dart';
import 'package:ticket_verification_app/services/provider.dart';

class QrScannerScreen extends ConsumerStatefulWidget {
  const QrScannerScreen({super.key});

  @override
  ConsumerState<QrScannerScreen> createState() => _QrScannerScreenState();
}

class _QrScannerScreenState extends ConsumerState<QrScannerScreen> {
  final _mobileScannerController = MobileScannerController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mobile Scanner')),
      body: MobileScanner(
        controller: _mobileScannerController,
        onDetect: (capture) async {
          final List<Barcode> barcodes = capture.barcodes;
          if (barcodes.isEmpty) return;
          final Barcode barcode = barcodes.first;
          _mobileScannerController.stop();
          if (barcode.format != BarcodeFormat.qrCode || barcode.rawValue == null) {
            showDialog(
              context: context,
              builder: (ctx) => AlertDialog(
                title: const Text('Failure'),
                content: const Text('The thing scanned is not a qrcode'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      _mobileScannerController.start();
                    },
                    child: const Text('OK'),
                  ),
                ],
              ),
            );
          } else {
            final apiResult =
                await ref.read<ApiService>(apiServiceProvider).getQrScanResult(qrCodeContent: barcode.rawValue!);
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
                        _mobileScannerController.start();
                      },
                      child: const Text('OK'),
                    ),
                  ],
                ),
              ),
              (responseData) => showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                  backgroundColor: responseData.used ? Colors.redAccent : Colors.white,
                  title: responseData.used ? const Text("DO NOT HONOR") : const Text('Success'),
                  content: Text(
                      'User NetID: ${responseData.ticketholderNetId}\n Event ID: ${responseData.eventId}\nUsed: ${responseData.used}'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                        _mobileScannerController.start();
                      },
                      child: const Text('OK'),
                    ),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
