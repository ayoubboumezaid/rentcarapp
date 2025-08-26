import 'package:flutter/material.dart';
import 'package:o3d/o3d.dart';

class DetailCar extends StatefulWidget {
  @override
  _DetailCarState createState() => _DetailCarState();
}

class _DetailCarState extends State<DetailCar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Center(
          child: Container(
            height: 600,
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Color(0xFFD4DBF8),
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(color: Colors.black.withOpacity(0.2), spreadRadius: 5, blurRadius: 7, offset: Offset(0, 3)),
              ],
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 16,
                  left: 100,
                  right: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Car Details',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      IconButton(icon: Image.asset('assets/menu.png', width: 24, height: 24), onPressed: () {}),
                    ],
                  ),
                ),
                Positioned(
                  top: 80,
                  left: 125,
                  right: 2,
                  child: Text(
                    'Model 360°',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),
                  ),
                ),
                Positioned(
                  top: -80,
                  left: 16,
                  right: 16,
                  child: Container(
                    height: 600,
                    width: double.infinity,
                    child: O3D(
                      src: 'assets/ferrari.glb',
                      autoRotate: true,
                      rotationPerSecond: '30 0 0',
                      interpolationDecay: 50,
                      cameraControls: true,
                      maxCameraOrbit: 'Infinity 90deg 90deg',
                      minCameraOrbit: '-Infinity 90deg 90deg',
                      disableZoom: false,
                    ),
                  ),
                ),
                Positioned(
                  top: 360,
                  left: 16,
                  right: 16,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(radius: 20, backgroundImage: AssetImage('assets/ferrari_logo1.jpg')),
                          SizedBox(width: 16),
                          Text('Ferrari SF90 Stradale', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Handcrafted luxury interior, distinctive design, '
                        'breath-taking power, rent a Bentley to past accelerate most supercars. '
                        'This marquee is world renowned for being a statement of...',
                        style: TextStyle(color: Colors.black),
                      ),
                      SizedBox(height: 16),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.black, width: 0.8),
                        ),
                        child: Row(
                          children: [
                            CircleAvatar(radius: 16, backgroundImage: AssetImage('assets/pic11.jpeg')),
                            CircleAvatar(radius: 16, backgroundImage: AssetImage('assets/pic12.png')),
                            CircleAvatar(radius: 16, backgroundImage: AssetImage('assets/pic13.avif')),
                            SizedBox(width: 8),
                            Text('4.9', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                            Spacer(),
                            Text('Reviews', style: TextStyle(fontSize: 16, color: Colors.black)),
                            SizedBox(width: 8),
                            Container(
                              width: 32,
                              height: 32,
                              decoration: BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
                              child: Icon(Icons.arrow_forward, color: Colors.white, size: 20),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
