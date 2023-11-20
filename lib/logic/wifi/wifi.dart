import 'package:flutter_opendroneid/flutter_opendroneid.dart';

class DroneDetectorWiFi
{

  static Stream<bool> get wifiState => FlutterOpenDroneId.wifiState;

  static get startScanning async
  {
    await FlutterOpenDroneId.startScan(UsedTechnologies.Wifi);
  }

  static get stopScanning async
  {
    await FlutterOpenDroneId.stopScan();
  }
}