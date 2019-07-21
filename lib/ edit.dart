import 'package:flutter/material.dart';

class EditPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _EditState();
}

class _EditState extends State<EditPage> {
  @override
  void initState() {
    super.initState();
  }

  bool _value1 = false;
  bool _value2 = false;

  //we omitted the brackets '{}' and are using fat arrow '=>' instead, this is dart syntax
  void _value1Changed(bool value) => setState(() => _value1 = value);
  void _value2Changed(bool value) => setState(() => _value2 = value);

  @override
  Widget build(BuildContext context) {
    final bool iphonex = MediaQuery.of(context).size.height >= 812.0;
    final double bottomPadding = iphonex ? 16.0 : 0.0;
    final double topPadding = iphonex ? 90.0 : 56;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(color: Color(0xff4f42e9)),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  decoration: BoxDecoration(color: Color(0xffebf0f3)),
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: MaterialButton(
                      elevation: 0,
                      highlightElevation: 0,
                      height: 50,
                      color: Color(0xffffffff),
                      padding: EdgeInsets.symmetric(
                        vertical: 15.0 + bottomPadding,
                        horizontal: 30.0,
                      ),
                      onPressed: () => Navigator.pop(context),
                      child: Text(
                        '취소',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w800,
                          color: Color(0xff6c62e8),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: MaterialButton(
                      elevation: 0,
                      highlightElevation: 0,
                      height: 50,
                      color: Color(0xff6c62e8),
                      padding: EdgeInsets.symmetric(
                        vertical: 15.0 + bottomPadding,
                        horizontal: 30.0,
                      ),
                      onPressed: () => Navigator.pop(context),
                      child: Text(
                        '완료',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w800,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(bottom: bottomPadding + 75),
            child: CustomScrollView(
              slivers: <Widget>[
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      Padding(
                        padding: EdgeInsets.only(top: topPadding, left: 30),
                        child: Text(
                          'HELLO\nMASH-UP!',
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                      Card(
                        elevation: 4,
                        shape: BeveledRectangleBorder(),
                        color: Color(0xffffffff),
                        margin: EdgeInsets.only(
                          top: 20,
                          left: 32,
                          right: 32,
                        ),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 36,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 16, right: 16),
                              child: TextFormField(
                                onFieldSubmitted: (text) {
                                  debugPrint("First text field1: $text");
                                },
                                onSaved: (text) {
                                  debugPrint("First text field2: $text");
                                },
                                validator: (text) =>
                                    text.isEmpty ? '모임 이름을 입력 해 주세요.' : null,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xff434444),
                                  fontSize: 22,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.w800,
                                ),
                                decoration: InputDecoration(
                                  labelStyle: TextStyle(
                                    color: Color(0xff434444),
                                    fontSize: 22,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.w900,
                                  ),
                                  errorStyle: TextStyle(
                                    color: Color(0xfffc5e5d),
                                    fontSize: 14,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  hintText: "모임 이름",
                                  hintStyle: TextStyle(
                                    color: Color(0xffdddddd),
                                    fontSize: 20,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  contentPadding: EdgeInsets.only(
                                    top: 8,
                                    bottom: 6,
                                  ),
                                  border: UnderlineInputBorder(
                                    borderSide: BorderSide(width: 1.3),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(width: 1.3),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 8, bottom: 16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Image.asset(
                                    "assets/images/icon_writer.png",
                                    width: 24,
                                    height: 24,
                                  ),
                                  Text(
                                    '김범준',
                                    style: TextStyle(
                                      color: Color(0xff4b9efd),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 1,
                              width: double.infinity,
                              decoration:
                                  BoxDecoration(color: Color(0xffededed)),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 36,
                                right: 36,
                                top: 9,
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  Image.asset(
                                    "assets/images/icon_date.png",
                                    width: 28,
                                    height: 28,
                                  ),
                                  Flexible(
                                    child: Container(
                                      width: double.infinity,
                                      margin: EdgeInsets.only(
                                        left: 4,
                                        right: 4,
                                      ),
                                      decoration: BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(
                                            color: Color(0xffe4e7e8),
                                          ),
                                        ),
                                      ),
                                      child: Text(
                                        '일정을 입력 해 주세요.',
                                        style: TextStyle(
                                          color: Color(0xffe4e7e8),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w800,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 36,
                                right: 36,
                                top: 12,
                              ),
                              child: Row(
                                children: <Widget>[
                                  Image.asset(
                                    "assets/images/icon_clock.png",
                                    width: 28,
                                    height: 28,
                                  ),
                                  Flexible(
                                    child: Container(
                                      width: double.infinity,
                                      margin: EdgeInsets.only(
                                        left: 4,
                                        right: 4,
                                      ),
                                      decoration: BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(
                                            color: Color(0xffe4e7e8),
                                          ),
                                        ),
                                      ),
                                      child: Text(
                                        '시간을 입력 해 주세요.',
                                        style: TextStyle(
                                          color: Color(0xffe4e7e8),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w800,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 36,
                                right: 36,
                                top: 12,
                                bottom: 12,
                              ),
                              child: Row(
                                children: <Widget>[
                                  Image.asset(
                                    "assets/images/icon_place.png",
                                    width: 28,
                                    height: 28,
                                  ),
                                  Flexible(
                                    child: Container(
                                      width: double.infinity,
                                      margin: EdgeInsets.only(
                                        left: 4,
                                        right: 4,
                                      ),
                                      decoration: BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(
                                            color: Color(0xffe4e7e8),
                                          ),
                                        ),
                                      ),
                                      child: Text(
                                        '장소를 입력 해 주세요.',
                                        style: TextStyle(
                                          color: Color(0xffe4e7e8),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w800,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 1,
                              width: double.infinity,
                              decoration:
                                  BoxDecoration(color: Color(0xffededed)),
                            ),
                            Container(
                              child: TextField(
                                maxLines: null,
                                style: TextStyle(
                                  color: Color(0xff434444),
                                  fontSize: 16,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.w800,
                                ),
                                decoration: InputDecoration(
                                  labelStyle: TextStyle(
                                    color: Color(0xff434444),
                                    fontSize: 16,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.w900,
                                  ),
                                  errorStyle: TextStyle(
                                    color: Color(0xfffc5e5d),
                                    fontSize: 14,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  hintText: "내용",
                                  hintStyle: TextStyle(
                                    color: Color(0xffdddddd),
                                    fontSize: 16,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  contentPadding: EdgeInsets.all(24),
                                  border: UnderlineInputBorder(
                                    borderSide: BorderSide(width: 1.3),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(width: 1.3),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 1,
                              width: double.infinity,
                              decoration:
                                  BoxDecoration(color: Color(0xffededed)),
                            ),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    children: <Widget>[
                                      CheckboxListTile(
                                        value: _value2,
                                        onChanged: _value2Changed,
                                        activeColor: Color(0xff4f42e9),
                                        title: Text(
                                          '투표 옵션',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xff757575),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    children: <Widget>[
                                      CheckboxListTile(
                                        value: _value2,
                                        onChanged: _value2Changed,
                                        activeColor: Color(0xff4f42e9),
                                        title: Text(
                                          '마감시간',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xff757575),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50 + bottomPadding,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.only(top: 6, left: 23),
              child: Image.asset(
                "assets/images/msg_mashup.png",
                width: 40,
                height: 40,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
