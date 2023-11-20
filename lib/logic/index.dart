import 'package:flutter_opendroneid/flutter_opendroneid.dart';
import 'package:flutter_opendroneid/models/message_container.dart';

export 'bluetooth/bluetooth.dart';
export 'wifi/wifi.dart';

class DroneDetectorLogic
{
  static Stream<MessageContainer> get allMessages => FlutterOpenDroneId.allMessages;
}