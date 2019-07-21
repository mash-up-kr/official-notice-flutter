import 'package:flutter/material.dart';
import 'package:playground/home.dart';
import 'package:playground/identy.dart';

class IntroPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _IntroState();
}

class _IntroState extends State<IntroPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Container(
          decoration: BoxDecoration(color: Color(0xFFebf0f3)),
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 100, left: 20),
                child: Text(
                  "로그인",
                  style: TextStyle(
                      color: Color(0xff4f42e9),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.none),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(top: 1, left: 20),
                    child: Text(
                      "매쉬업 공지앱",
                      style: TextStyle(
                          color: Color(0xff4f42e9),
                          fontSize: 30,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(right: 6),
                          alignment: Alignment.topLeft,
                          decoration: BoxDecoration(
                              color: Color(0xff4f42e9),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(7))),
                          width: 14,
                          height: 14,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          alignment: Alignment.bottomRight,
                          decoration: BoxDecoration(
                              color: Color(0xfffc5e5d),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(7))),
                          width: 14,
                          height: 14,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.only(
                  top: 48,
                  left: 31,
                  right: 31,
                  bottom: 27,
                ),
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0x29000000),
                        offset: Offset(0, 6),
                        blurRadius: 6)
                  ],
                ),
                margin: EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 50,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "이메일",
                      style: TextStyle(
                        color: Color(0xff7e7e7e),
                        fontSize: 13,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelStyle: TextStyle(
                          color: Color(0xff434444),
                          fontSize: 15,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w800,
                        ),
                        hintText: 'mashup@naver.com',
                        hintStyle: TextStyle(
                          color: Color(0xffdddddd),
                          fontSize: 14,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w500,
                        ),
                        contentPadding: EdgeInsets.only(top: 8, bottom: 6),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(width: 1.3),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(width: 1.3),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Text(
                      "비밀번호",
                      style: TextStyle(
                        color: Color(0xff7e7e7e),
                        fontSize: 13,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelStyle: TextStyle(
                          color: Color(0xff434444),
                          fontSize: 15,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w800,
                        ),
                        hintText: '8-12글자로 정해주세요.',
                        hintStyle: TextStyle(
                          color: Color(0xffdddddd),
                          fontSize: 14,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w500,
                        ),
                        contentPadding: EdgeInsets.only(top: 8, bottom: 6),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(width: 1.3),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(width: 1.3),
                        ),
                      ),
                    ),
                    SizedBox(height: 43),
                    ButtonTheme(
                      minWidth: double.infinity,
                      padding: EdgeInsets.only(top: 15, bottom: 15),
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()),
                          );
                        },
                        color: Color(0xff4f42e9),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(23.0),
                        ),
                        child: Text(
                          '로그인',
                          style: TextStyle(
                            color: Color(0xffffffff),
                            fontSize: 20,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                alignment: Alignment(1, 0),
                margin: EdgeInsets.only(top: 7, right: 33),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => IdentyPage()),
                      );
                    },
                    borderRadius: BorderRadius.all(Radius.circular(24)),
                    child: Container(
                      padding: EdgeInsets.all(12),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Image.asset(
                            "assets/images/icon_join.png",
                            width: 24,
                            height: 24,
                          ),
                          SizedBox(width: 4),
                          Text(
                            '인증 및 회원가입하기',
                            style: TextStyle(
                              color: Color(0xff4f42e9),
                              fontSize: 14,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
}
