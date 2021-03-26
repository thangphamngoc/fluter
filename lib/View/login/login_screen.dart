import 'package:diseno/extension/string/string.dart';
import 'package:diseno/extension/theme/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  static const _logoSize = 30.0;
  FocusNode _nodeOne = FocusNode();
  FocusNode _nodeTwo = FocusNode();
  TextEditingController _textEditingController = TextEditingController();

  @override
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: _body(),
    );
  }

  // ignore: missing_return
  Widget _body() {
    return Container(
      color: ThemeColorApp.dark,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
              flex: 4,
              child: LayoutBuilder(builder: (context, constrains) {
                print(constrains);
                return Stack(children: [
                  Positioned.fill(
                      //vi tri làm đầy cách đáy = 30
                      bottom: _logoSize,
                      left: -25,
                      right: -25,
                      child: Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    ThemeColorApp.dark,
                                    ThemeColorApp.purple
                                  ]),
                              borderRadius: BorderRadius.vertical(
                                  bottom: Radius.circular(200))))),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: CircleAvatar(
                          child: Padding(
                            padding: EdgeInsets.all(10),
                          ),
                          radius: 45,
                          backgroundImage: NetworkImage(
                              "https://s3-ap-southeast-1.amazonaws.com"
                              "/images.spiderum.com/sp-images/c97e29e0bdf411ea80a6f3f2c55386e8.jpg"))),
                ]);
              })),
          Expanded(
              flex: 6,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.all(12.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: Text("initializing...")),
                      SizedBox(height: 60),
                      Text(StringApp.txtuser,
                          style: Theme.of(context).textTheme.caption.copyWith(
                              fontWeight: FontWeight.bold,
                              color: ThemeColorApp.blue,
                              fontSize: 12)),
                      TextFormField(
                        maxLength: 30,
                        textInputAction: TextInputAction.go,
                        style: Theme.of(context).textTheme.caption.copyWith(
                            fontWeight: FontWeight.bold,
                            color: ThemeColorApp.blue,
                            fontSize: 16),
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                          Icons.person_outline,
                          color: ThemeColorApp.blue,
                        )),
                      ),

                      Text(StringApp.txtpwd,
                          style: Theme.of(context).textTheme.caption.copyWith(
                              fontWeight: FontWeight.bold,
                              color: ThemeColorApp.blue,
                              fontSize: 12)),
                      TextFormField(
                        obscureText: true,
                        textInputAction: TextInputAction.done,
                        style: Theme.of(context).textTheme.caption.copyWith(
                            fontWeight: FontWeight.bold,
                            color: ThemeColorApp.blue,
                            fontSize: 16),
                        decoration: InputDecoration(
                            hintText: StringApp.txtpwd,
                            prefixIcon: Icon(
                              Icons.lock_outline,
                              color: ThemeColorApp.blue,
                            )),
                      ),
                      SizedBox(height: 50),
                      InkWell(
                          onTap: () {
                            print("thangpn");
                            print("Tap Tap Tap");
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      ThemeColorApp.purple,
                                      ThemeColorApp.dark
                                    ])),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                StringApp.txtlogin,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ))
                    ]),
              ))
        ],
      ),
    );
  }
}
