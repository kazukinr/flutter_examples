import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PlatformChannelPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Platform Channel Example'),
      ),
      body: ChannelStateWidget(),
    );
  }
}

class ChannelStateWidget extends StatefulWidget {
  @override
  _ChannelStateWidgetState createState() => _ChannelStateWidgetState();
}

class _ChannelStateWidgetState extends State<ChannelStateWidget> {
  static const platform = const MethodChannel('com.github.kazukinr.flutter_examples/battery');

  String _batteryLevel = 'Unknown battery level.';

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: _getBatteryLevel,
                child: Text('Get Battery Level'),
              ),
              Text(_batteryLevel),
            ],
          )
      ),
    );
  }

  Future<void> _getBatteryLevel() async {
    String batteryLevel;
    try {
      final int result = await platform.invokeMethod('getBatteryLevel');
      batteryLevel = 'Battery level at $result % .';
    } on PlatformException catch (e) {
      batteryLevel = 'Failed to get battery level: [${e.message}].';
    }

    setState(() {
      _batteryLevel = batteryLevel;
    });
  }
}
