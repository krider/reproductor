

// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:reproductor/box.dart';


class musicaR extends StatefulWidget {
  const musicaR({super.key});

  @override
  State<musicaR> createState() => _musicaRState();
}

class _musicaRState extends State<musicaR> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:20.0),
          child: Column(children: [
            const SizedBox(height: 10),
            //menu
            Row(
              mainAxisAlignment : MainAxisAlignment.spaceBetween,
              children: const [
              SizedBox(
                height: 40,
                width: 40,
                child: neuBox(child: Icon(Icons.arrow_back_ios)),
              ),
              Text("P L A Y L I S T ",style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20,color: Colors.black),
              ),
              SizedBox(
                height: 40,
                width: 40,
                child: neuBox(child: Icon(Icons.menu)),
              ),
            ],
          ),
          
          const SizedBox(height: 30), ///tamaño de la caja de botones = deslizamiento hacia abajo de la imagen

            //detalles
          neuBox(child:Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset("lib/imagenes/cover.png"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "'ALBUM-LOST ON YOU'", 
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Text(
                            "'LP'",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                              color: Colors.grey.shade800,
                            ),
                          ),
                        ],
                      ),
                      const Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 32,
                        ),
                    ],
                  ),
                ),
            ],
          ),
        ),

        const SizedBox(height: 40),

            //controles
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text("0.00"),
                Icon(Icons.shuffle),
                Icon(Icons.repeat),
                Text("5.02"),
            ],
          ),

          const SizedBox(height: 20),

            //barra de progreso
            neuBox(
              child: LinearPercentIndicator(
                lineHeight: 5,
                percent: 0.3,
                progressColor: Colors.blue.shade700,
                backgroundColor: Colors.transparent,
              ),
            ),
          const SizedBox(height: 20),

            //atras
            SizedBox(height: 55.0,
              child: Row(
                children:const [
                  Expanded(
                    child: neuBox(
                      child:Icon(
                        Icons.skip_previous,
                        size: 32,
                        ),
                        ),
                      ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal:20.0),
                      child: neuBox(
                        child:Icon(
                          Icons.play_arrow,
                          size: 32,
                          ),
                          ),
                    ),
                      ),
                  Expanded(
                    child: neuBox(
                      child:Icon(
                        Icons.skip_next,
                        size: 32,
                        ),
                        ),
                      ),
                ],
          ),
            ),
          ],),
        ),
      ),
    );
  }
}