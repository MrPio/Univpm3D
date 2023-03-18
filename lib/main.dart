import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ModelViewer(
          relatedCss: """
            .hotspot{
              display: block;
              width: 38px;
              height: 38px;
              border-radius: 10px;
              border: none;
              background-color: white;
              box-sizing: border-box;
              pointer-events: none;
            }
         
            .annotation{
              background-color: #888888;
              position: absolute;
              transform: translate(10px, 10px);
              border-radius: 10px;
              padding: 10px;
            }
            
  """,
          innerModelViewerHtml: """
      <button class="hotspot" slot="hotspot-visor" data-position="1.55m 1.425m -8.55m" data-normal="0 0 -1">
        <div class="HotspotAnnotation">Qt. 140</div>
      </button>
            <button class="hotspot" slot="hotspot-visor2" data-position="-0m 1.85m -7.4m" data-normal="0 0 1">
        <div class="HotspotAnnotation">Qt. 160</div>
      </button>
          """,
          src: 'assets/Univpm3.glb',
          shadowIntensity: 1,
          shadowSoftness: 1,

          // autoRotate: true,
          cameraControls: true,
          interactionPrompt: null,
          minCameraOrbit: "-20deg 58deg 20m",
          maxCameraOrbit: "180deg 76deg 30m",
          fieldOfView: "10deg",
          minFieldOfView: "4deg",
          maxFieldOfView: "10deg",
          cameraOrbit: "103.7deg 76deg 0m",
          backgroundColor: Colors.black12,
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitDown,
    ]);
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  }
}
