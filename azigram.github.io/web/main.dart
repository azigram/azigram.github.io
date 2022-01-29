import 'package:flutter/material.dart';
//import 'package:dio/dio.dart';

void main() async {
  // var dio = Dio();
  // final response = await dio.get('http://google.com');
  // print(response.data);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'test page_webflutter '),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
        extendBodyBehindAppBar: true, //뒷단 배경 사진 넣을 때 사용
        appBar: PreferredSize(
            preferredSize: Size(screenSize.width, 1000),
            child: Container(
                color: const Color(0x00000000),
                child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      children: [
                        //Text(' 아지그램 '),
                        Expanded(
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                              InkWell(
                                  onTap: () {},
                                  child: Text('서비스 소개',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: const Color(0xff7b61ff)))),
                              SizedBox(width: screenSize.width / 25),
                              InkWell(
                                  onTap: () {},
                                  child: Text('질의응답',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: const Color(0xff7b61ff)))),
                              SizedBox(width: screenSize.width / 25),
                              InkWell(
                                  onTap: () {},
                                  child: Text('더 알아보기',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: const Color(0xff7b61ff)))),
                            ]))
                      ],
                    )))),
        body: Center(
          child: SingleChildScrollView(
              child: Container(
            child: Column(
              children: [
                //Padding(padding: EdgeInsets.only(top: 10)),
                Image.asset(
                  'images/main1.png',
                  fit: BoxFit.contain,
                ),
                // Stack(children: [
                //   Container(
                //       child: SizedBox(
                //           width: screenSize.width,
                //           height: screenSize.height,
                //           child: Image.asset(
                //             'images/main1.png',
                //             fit: BoxFit.contain,
                //           ))),
                // ]),
                Image.asset(
                  'images/problem.png',
                  fit: BoxFit.contain,
                ),
                Image.asset(
                  'images/sol_11.png',
                  fit: BoxFit.contain,
                ),
                Image.asset(
                  'images/sol_22.png',
                  fit: BoxFit.contain,
                ),
                Image.asset(
                  'images/sol_3.png',
                  fit: BoxFit.contain,
                ),
                Image.asset(
                  'images/sol_4.png',
                  fit: BoxFit.contain,
                ),
                //*회사 소개 정보 및 개인정보 지침 관련 사항 첨부
                // Container(
                //     //이미지 상단 짤리는 현상
                //     child: SizedBox(
                //         width: screenSize.width,
                //         height: screenSize.height,
                //         child: Image.asset(
                //           'images/problem.png',
                //           fit: BoxFit.contain,
                //         ))),
              ],
            ),
          )),
        ));
  }
}
