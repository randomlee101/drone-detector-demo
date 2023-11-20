import 'package:drone_detector_demo/logic/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_opendroneid/models/message_container.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drone Detector Demo"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            StreamBuilder(
                stream: DroneDetectorBluetooth.bluetoothState,
                builder: (context, snapshot) {
                  return ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: const Text(
                      "Bluetooth",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
                    ),
                    subtitle: Text(
                        snapshot.data ?? false ? "Connected" : "Disconnected"),
                    trailing: ElevatedButton(
                        onPressed: () {
                          snapshot.data ?? false
                              ? DroneDetectorBluetooth.stopScanning
                              : DroneDetectorBluetooth.startScanning;
                        },
                        child: Text(snapshot.data ?? false ? "Stop" : "Start")),
                  );
                }),
            StreamBuilder(
                stream: DroneDetectorWiFi.wifiState,
                builder: (context, snapshot) {
                  return ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: const Text(
                      "WiFi",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
                    ),
                    subtitle: Text(
                        snapshot.data ?? false ? "Connected" : "Disconnected"),
                    trailing: ElevatedButton(
                        onPressed: () {
                          snapshot.data ?? false
                              ? DroneDetectorWiFi.stopScanning
                              : DroneDetectorWiFi.startScanning;
                        },
                        child: Text(snapshot.data ?? false ? "Stop" : "Start")),
                  );
                }),
            const Text(
              "Messages",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
            ),
            StreamBuilder<MessageContainer>(
                stream: DroneDetectorLogic.allMessages,
                builder: (context, snapshot) {
                  return Text(snapshot.data?.toString() ?? "N/A");
                }),
          ],
        ),
      ),
    );
  }
}
