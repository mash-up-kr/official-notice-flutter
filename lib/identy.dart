import 'package:flutter/material.dart';
import 'package:playground/home.dart';

class IdentyPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _IdentyPage();
}

class _IdentyPage extends State<IdentyPage> {
  final _emailKey = GlobalKey<FormFieldState<String>>();
  final _passwordKey = GlobalKey<FormFieldState<String>>();

  void _clicked() {
    if (_emailKey.currentState.validate() &&
        _passwordKey.currentState.validate())
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
          ModalRoute.withName('/'));
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
                  "회원가입",
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
                      "정보 입력",
                      style: TextStyle(
                          color: Color(0xff4f42e9),
                          fontSize: 30,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w600),
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
                      key: _emailKey,
                      onFieldSubmitted: (text) {
                        debugPrint("First text field1: $text");
                      },
                      onSaved: (text) {
                        debugPrint("First text field2: $text");
                      },
                      validator: (text) =>
                          text.isEmpty ? '이메일을 입력 해 주세요.' : null,
                      decoration: InputDecoration(
                        labelStyle: TextStyle(
                          color: Color(0xff434444),
                          fontSize: 15,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w800,
                        ),
                        errorStyle: TextStyle(
                          color: Color(0xfffc5e5d),
                          fontSize: 14,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w500,
                        ),
                        hintText: "mashup@naver.com",
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
                      key: _passwordKey,
                      obscureText: true,
                      onFieldSubmitted: (text) {
                        debugPrint("First text field1: $text");
                      },
                      onSaved: (text) {
                        debugPrint("First text field2: $text");
                      },
                      validator: (text) => text.length < 8 || text.length > 12
                          ? '비밀번호를 8자리에서 12자리로 입력 해 주세요'
                          : null,
                      decoration: InputDecoration(
                        labelStyle: TextStyle(
                          color: Color(0xff434444),
                          fontSize: 15,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w800,
                        ),
                        errorStyle: TextStyle(
                          color: Color(0xfffc5e5d),
                          fontSize: 14,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w500,
                        ),
                        hintText: "8-12글자로 정해주세요.",
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
                      maxLength: 12,
                    ),
                    SizedBox(height: 43),
                    ButtonTheme(
                      minWidth: double.infinity,
                      padding: EdgeInsets.only(top: 15, bottom: 15),
                      child: RaisedButton(
                        // onPressed: () {
                        //   debugPrint("clicked");
                        //   if (_phoneNumberKey.currentState.validate())
                        //     debugPrint("validate");
                        //   else
                        //     debugPrint("invalidate");
                        // },
                        onPressed: _clicked,
                        color: Color(0xff4f42e9),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(23.0),
                        ),
                        child: Text(
                          '회원가입',
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
            ],
          ),
        ),
      );
}
