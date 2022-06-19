  import 'dart:io';
  import 'package:flutter/services.dart';
  import 'package:flutter/material.dart';
  import 'package:splash_screen_view/SplashScreenView.dart';
  import 'package:supabase_flutter/supabase_flutter.dart';
  
  
  
  import 'package:myapp/src/pages/home/page.dart';
  import 'package:teta_cms/teta_cms.dart';

  ///NOTE:
  ///if you have an error while running <flutter run> 
  ///run <flutter pub upgrade> and than <flutter run --no-sound-null-safety>
  void main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    await TetaCMS.initialize(
      token: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InRhcmZyYW1ld29ya0BnbWFpbC5jb20iLCJlbWFpbF92ZXJpZmllZCI6dHJ1ZSwicHJvamVjdHMiOlsxMzM5NTcsMTI4MDg2LDEzMDY0NV0sImltYWdlIjoiaHR0cHM6Ly9saDMuZ29vZ2xldXNlcmNvbnRlbnQuY29tL2EtL0FPaDE0R2hlZ1JtYnRmeVBtRkczMU43a0xVS0ZYTjBVSXRNdHp1a1lCTUd2MUE9czk2LWMiLCJuYW1lIjoidGFyIGZyYW1ld29yayIsImVtaXR0ZXIiOiJUZXRhLUF1dGgiLCJpYXQiOjE2NTU2NjAxNDEsImV4cCI6NDgxMTQyMDE0MX0.zAiw3y2AX_Ue_X6wYzbxGQT0mCL0QHSrlQM-VmHb-_c',
      prjId: 128086,
    );
    
      Supabase.initialize(
    url: 'https://qrtqnnmiajhvdfbodote.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFydHFubm1pYWpodmRmYm9kb3RlIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NTQzNDE1NzEsImV4cCI6MTk2OTkxNzU3MX0.cvmeIbWNIZWwGaC5Uu_lUzAzDHNsWN6Vl2NuEfwkXyU',
  );
  
    
    
    runApp(MyApp());
  }
  class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: 'ThamizhNation',
        home: SplashScreenView(
          navigateRoute: PageHome(),
          duration: 2200,
          imageSize: 80,
          imageSrc: 'assets/teta-app.png',
          text: '',
          textType: TextType.NormalText,
          textStyle: TextStyle(
            fontSize: 30.0,
          ),
          backgroundColor: Colors.black,
        ),
      );
    }
  }
  