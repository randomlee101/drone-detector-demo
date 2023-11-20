# Drone Detector Demo

Demo App To Detect Drones Using Bluetooth and WiFi based on _flutter_opendroneid_

![Drone Detector Demo](https://github.com/randomlee101/drone-detector-demo/blob/main/Screenshot_20231120_125238.png)

## To Set Up

Clone this repository and fetch the required packages with

```text
flutter pub get
```

A Few Tweaks were made to flutter_opendroneid manually changing the kotlin version of the package to 1.5.20 from 1.4.30

In terms of the _assertPermission method in the flutter_opendroneid.dart file, it is based on permission handler so instead of checking the permissions only which could lead to a PermissionMissingException I switched from 
```text
... .status.isGranted
```

to

```text
... .request().isGranted
```

This way if the permissions don't exist the permission_handler can prompt users to give permission

## To Build And Run On A Physical Device

```text
flutter build apk
```

