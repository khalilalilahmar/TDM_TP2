import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation anim;

  bool img1 = true;
  bool img2 = true;
  bool img3 = true;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 5));
    anim = Tween<double>(begin: 0.0, end: 300.0).animate(controller);
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products"),
      ),
      body: Builder(
        builder: (context) => SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: anim.value,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Card(
                    elevation: 100,
                    child: InkWell(
                      onTap: () {
                        Scaffold.of(context).showSnackBar(SnackBar(
                          duration: Duration(seconds: 1),
                          content: Text("Price : 5  "),
                        ));
                      },
                      onLongPress: () {
                        setState(() {
                          img1 = !img1;
                        });
                      },
                      child: img1
                          ? Image.asset(
                              "assets/1.jpg",
                              fit: BoxFit.cover,
                            )
                          : SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  InkWell(
                                    onTap: () {
                                      Scaffold.of(context).showSnackBar(SnackBar(
                                        duration: Duration(seconds: 1),
                                        content: Text("Price : 10  "),
                                      ));
                                    },
                                    onLongPress: () {
                                      setState(() {
                                        img1 = !img1;
                                      });
                                    },
                                    child: Container(
                                        height: 300,
                                        width: 200,
                                        child: Image.asset(
                                          "assets/2.png",
                                          fit: BoxFit.contain,
                                        )),
                                  ),
                                  VerticalDivider(color: Colors.black, width: 20),
                                  InkWell(
                                    onTap: () {
                                      Scaffold.of(context).showSnackBar(SnackBar(
                                        duration: Duration(seconds: 1),
                                        content: Text("Price : 25  "),
                                      ));
                                    },
                                    onLongPress: () {
                                      setState(() {
                                        img1 = !img1;
                                      });
                                    },
                                    child: Container(
                                      height: 300,
                                      width: 200,
                                      child: Image.asset(
                                        "assets/3.png",
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                    ),
                  ),
                ),
              ),
              Container(
                height: anim.value,
                child: Center(
                  child: Card(
                    elevation: 100,
                    child: InkWell(
                      onTap: () {
                        Scaffold.of(context).showSnackBar(SnackBar(
                          duration: Duration(seconds: 1),
                          content: Text("Price : 55000  "),
                        ));
                      },
                      onLongPress: () {
                        setState(() {
                          img2 = !img2;
                        });
                      },
                      child: img2
                          ? Container(
                              child: Image.asset(
                              "assets/4.png",
                              fit: BoxFit.contain,
                            ))
                          : SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: <Widget>[
                                  InkWell(
                                      onTap: () {
                                        Scaffold.of(context).showSnackBar(SnackBar(
                                          duration: Duration(seconds: 1),
                                          content: Text("Price : 60000  "),
                                        ));
                                      },
                                      onLongPress: () {
                                        setState(() {
                                          img2 = !img2;
                                        });
                                      },
                                      child: Image.asset(
                                        "assets/5.png",
                                        fit: BoxFit.contain,
                                      )),
                                  VerticalDivider(color: Colors.black, width: 20),
                                  InkWell(
                                      onTap: () {
                                        Scaffold.of(context).showSnackBar(SnackBar(
                                          duration: Duration(seconds: 1),
                                          content: Text("Price : 85000  "),
                                        ));
                                      },
                                      onLongPress: () {
                                        setState(() {
                                          img2 = !img2;
                                        });
                                      },
                                      child: Image.asset("assets/6.jpg"))
                                ],
                              ),
                            ),
                    ),
                  ),
                ),
              ),
              Container(
                height: anim.value,
                width: anim.value,
                child: Center(
                  child: Card(
                    elevation: 100,
                    child: InkWell(
                      onTap: () {
                        Scaffold.of(context).showSnackBar(SnackBar(
                          duration: Duration(seconds: 1),
                          content: Text("Price : 7000  "),
                        ));
                      },
                      onLongPress: () {
                        setState(() {
                          img3 = !img3;
                        });
                      },
                      child: img3
                          ? Image.asset("assets/7.png")
                          : SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: <Widget>[
                                  InkWell(
                                      onLongPress: () {
                                        setState(() {
                                          img3 = !img3;
                                        });
                                      },
                                      onTap: () {
                                        Scaffold.of(context).showSnackBar(SnackBar(
                                          duration: Duration(seconds: 1),
                                          content: Text("Price : 5500  "),
                                        ));
                                      },
                                      child: Image.asset("assets/8.jpg")),
                                  VerticalDivider(color: Colors.black, width: 20),
                                  InkWell(
                                      onTap: () {
                                        Scaffold.of(context).showSnackBar(SnackBar(
                                          duration: Duration(seconds: 1),
                                          content: Text("Price : 4000  "),
                                        ));

                                      },
                                      onLongPress: () {
                                        setState(() {
                                          img3 = !img3;
                                        });
                                      },
                                      child: Image.asset("assets/9.jpg"))
                                ],
                              ),
                            ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
