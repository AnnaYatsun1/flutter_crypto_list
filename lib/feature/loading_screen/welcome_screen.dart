import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:delayed_widget/delayed_widget.dart';
import 'package:shimmer/shimmer.dart';
import 'package:test_list_flutter/feature/auth/welcome_register_screen.dart';
// import 'package:lorem/lorem.dart';
// import 'package:flutter/src/rendering/flex.dart'

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return PopScope(
      child: Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                onPressed: () {
                  if ((user == null)) {
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => WelcomeRegisterScreen()),
                    );
                  }
                },
                icon: Icon(Icons.person),
              )
            ],
          ),
          body: GestureDetector(
            onTap: () {},
            child: SafeArea(
                child: Stack(
              children: [
                Positioned.fill(
                    child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Image.asset(
                    'assets/png/untitled1.png',
                    fit: BoxFit.cover,
                  ),
                )),
                Column(
                  children: [
                    Expanded(flex: 2, child: Container()),
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                          colors: [
                            // Color.lerp(
                            // Colors.white.withAlpha(0), Colors.white, 0.5)!
                            Colors.orangeAccent.withAlpha(30),
                            Colors.orange.withAlpha(127),
                            Colors.white,
                            Colors.white
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        )),
                        child: DelayedWidget(
                            delayDuration:
                                Duration(milliseconds: 200), // Not required
                            animationDuration:
                                Duration(seconds: 1), // Not required
                            animation: DelayedAnimations
                                .SLIDE_FROM_BOTTOM, // Not required
                            child: Column(
                              children: [
                                Text(
                                  'Wealcome to  👇',
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Crypto App',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.amber),
                                ),
                                Shimmer.fromColors(
                                    child: Text(
                                      '''
                      Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vel purus ac odio.
    
                      Phasellus efficitur, lorem nec cursus vehicula, purus erat posuere risus, ut ullamcorper libero dui sed ligula.
    
                      Fusce nec arcu eget risus gravida efficitur non at augue. Nullam ut orci sapien. 
    
                      Aenean euismod enim at metus varius, eget efficitur augue volutpat. 
    
                      Suspendisse potenti. Integer vitae massa eget sapien tincidunt vulputate eget eu justo.
                      ''',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    baseColor: Colors.grey[300]!,
                                    highlightColor: Colors.white)
                              ],
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                            )),
                        padding: EdgeInsets.only(
                          bottom: height / 15,
                          right: width / 10,
                          left: width / 10,
                        ),
                      ),
                    )
                  ],
                )
              ],
            )),
          )),
    );
  }
}
