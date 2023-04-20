import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Messages extends StatefulWidget {
  final String name;
  final String message;
  final String image;

   Messages(this.name, this.message,this.image ,{Key? key}) : super(key: key);

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {

  @override
  Widget build(BuildContext context) {
    double _size = MediaQuery.of(context).size.height;
    return Align(
        alignment: Alignment.center,
        child: Container(
            width: _size*0.3,
            margin: const EdgeInsets.only(top: 5),
            height: _size*0.08,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(2, 2),
                      color: Colors.black45
                  )
                ]
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      Padding(
                        padding: const EdgeInsets.only(left: 4, top: 4),
                        child: Icon(
                          FontAwesomeIcons.whatsapp, color: Colors.green,
                          size: 12,),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 4, top: 4),
                        child: Text(
                          'Whatsapp •', style: TextStyle(fontSize: 8,color: Colors.white70),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 4, top: 4),
                        child: Text('10m ', style: TextStyle(fontSize: 8,color: Colors.white70),),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 2, bottom: 4, left: 10, right: 4),
                  child: Row(
                    children: [

                      CircleAvatar(
                        maxRadius: 12,
                        backgroundImage: AssetImage(widget.image),
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 4),
                            child: Text(widget.name,
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 12,color: Colors.white),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 4),
                            child: Text(widget.message,
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 10, color: Colors
                                  .white70),),
                          ),
                        ],
                      )

                    ],
                  ),
                )
              ],
            )
        )
    );
  }
}
