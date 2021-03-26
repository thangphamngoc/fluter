import 'package:diseno/View/login/login_screen.dart';
import 'package:diseno/extension/string/string.dart';
import 'package:diseno/extension/theme/color.dart';
import 'package:diseno/model/person.dart';
import 'package:diseno/network/network_request.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<Person> futurePerson;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futurePerson = fetchPerson();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _body(),
    );
  }

  // ignore: missing_return
  Widget _body() {
    return Container(
      decoration: BoxDecoration(
        // do ma gradient kieu ngang
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [ThemeColorApp.green, ThemeColorApp.purple])),
      child: _columnSpl(),
    );
  }

  // ignore: missing_return
  Widget _columnSpl() {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CircleAvatar(
            radius: 100,
            backgroundColor: ThemeColorApp.white,
            backgroundImage:
            NetworkImage("https://cdn.tgdd.vn/Files/2018/12/01/11"
                "35088/top-10-phan-mem-hoc-tieng-anh-"
                "cho-be-tai-nha-de-hieu-hinh-anh-sinh-dong-thu-vi.jpg"),
          ),
          SizedBox(height: 10),
          Text(StringApp.appString,
              textAlign: TextAlign.center,
              style: Theme
                  .of(context)
                  .textTheme
                  .headline5
                  .copyWith(fontWeight: FontWeight.bold)),
          FutureBuilder<Person>(
            future: futurePerson,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                // ignore: missing_return
                print(snapshot.data.userName);
                print(snapshot.data.passWord);
              }
              return CircularProgressIndicator();
            },
          )
        ],
      ),
    );
  }
}
