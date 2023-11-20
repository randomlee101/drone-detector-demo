import 'package:flutter_opendroneid/flutter_opendroneid.dart';

class DroneDetectorBluetooth
{

  static Stream<bool> get bluetoothState => FlutterOpenDroneId.bluetoothState;

  static get startScanning async
  {
    await FlutterOpenDroneId.startScan(UsedTechnologies.Bluetooth);
  }

  static get stopScanning async
  {
    await FlutterOpenDroneId.stopScan();
  }
}