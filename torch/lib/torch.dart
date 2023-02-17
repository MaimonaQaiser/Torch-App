import 'package:flutter/material.dart';
import 'package:torch_controller/torch_controller.dart';

class TorchLite extends StatefulWidget {
  const TorchLite({Key? key}) : super(key: key);

  @override
  State<TorchLite> createState() => _TorchLiteState();
}

class _TorchLiteState extends State<TorchLite> {
  var isActive = false;
  var controller = TorchController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff455A64) ,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: Text('Torch light', style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    isActive
                        ? 'assets/images/torchOn.png'
                        : 'assets/images/torchOff.png',
                    width: 200,
                    height: 200,
                    color: isActive ? null : Color(0xff757575).withOpacity(0.6),
                  ),
                  SizedBox(
                    height: size.height * 0.1,
                  ),
                  CircleAvatar(
                    minRadius: 30,
                    maxRadius: 45,
                    child: Transform.scale(
                        scale: 1.5,
                        child: IconButton(
                            onPressed: () {
                              controller.toggle();
                              isActive = !isActive;
                              setState(() {});
                            },
                            icon: Icon(Icons.power_settings_new_sharp))),
                  )
                ],
              ),
            ),
          )),
          Text('Develop by Maimona Qaiser',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14.0,
              )),
          SizedBox(
            height: size.height * 0.05,
          )
        ],
      ),
    );
  }
}
