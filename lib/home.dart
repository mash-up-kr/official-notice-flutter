import 'package:flutter/material.dart';
import 'package:playground/%20edit.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int bottomSelectedIndex = 0;
  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  @override
  void initState() {
    super.initState();
  }

  void pageChanged(int index) {
    setState(() {
      bottomSelectedIndex = index;
    });
  }

  void bottomTapped(int index) {
    setState(() {
      bottomSelectedIndex = index;
      pageController.animateToPage(index,
          duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

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
              )
            ],
          ),
          PageView(
            controller: pageController,
            onPageChanged: (index) {
              pageChanged(index);
            },
            children: <Widget>[
              CustomScrollView(
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
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  IconButton(
                                    onPressed: () => debugPrint('clicked'),
                                    padding: EdgeInsets.only(
                                      right: 16,
                                      top: 16,
                                      bottom: 16,
                                    ),
                                    icon: Image.asset(
                                      "assets/images/icon_delete.png",
                                      width: 24,
                                      height: 24,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                '전체회의 공지',
                                style: TextStyle(
                                  color: Color(0xff525c69),
                                  fontSize: 22,
                                  fontWeight: FontWeight.w800,
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
                                  children: <Widget>[
                                    Image.asset("assets/images/icon_date.png",
                                        width: 24, height: 24),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 4,
                                      ),
                                      child: Text(
                                        '2019년 1월 26일 (토)',
                                        style: TextStyle(
                                          color: Color(0xff4525c69),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400,
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
                                  top: 4,
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Image.asset("assets/images/icon_clock.png",
                                        width: 24, height: 24),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 4,
                                      ),
                                      child: Text(
                                        '오후 3시-6시',
                                        style: TextStyle(
                                          color: Color(0xff4525c69),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400,
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
                                  top: 4,
                                  bottom: 12,
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Image.asset("assets/images/icon_place.png",
                                        width: 24, height: 24),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 4,
                                      ),
                                      child: Text(
                                        '강남역 8번 출구 하이퍼커넥트 14층',
                                        style: TextStyle(
                                          color: Color(0xff4525c69),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400,
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
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 24,
                                  right: 24,
                                  top: 12,
                                  bottom: 12,
                                ),
                                child: Text(
                                  '이번 전체회의에서는 디자인을 잘 하는 방법에 대한 세미나가 있을 예정입니다. 함께 팀활동을 할 예정이니, 노트북을 가져와주시길 바랍니다. 그 후에는 자유롭게 프로젝트팀 회의 시간을 드릴 예정입니다. 오시는 분들 모두 회의 준비도 열시뮈 해서 만나요!!',
                                  style: TextStyle(
                                    color: Color(0xff4525c69),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
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
                                    child: MaterialButton(
                                      elevation: 0,
                                      highlightElevation: 0,
                                      padding: EdgeInsets.symmetric(
                                        vertical: 15.0,
                                        horizontal: 30.0,
                                      ),
                                      color: Color(0xffffffff),
                                      onPressed: () => debugPrint('clicked'),
                                      child: Text('참석할게요'),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: MaterialButton(
                                      elevation: 0,
                                      highlightElevation: 0,
                                      padding: EdgeInsets.symmetric(
                                        vertical: 15.0,
                                        horizontal: 30.0,
                                      ),
                                      color: Color(0xffffffff),
                                      onPressed: () => debugPrint('clicked'),
                                      child: Text('불참할게요'),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              CustomScrollView(
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
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  IconButton(
                                    onPressed: () => debugPrint('clicked'),
                                    padding: EdgeInsets.only(
                                      right: 16,
                                      top: 16,
                                      bottom: 16,
                                    ),
                                    icon: Image.asset(
                                      "assets/images/icon_delete.png",
                                      width: 24,
                                      height: 24,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                '전체회의 공지',
                                style: TextStyle(
                                  color: Color(0xff525c69),
                                  fontSize: 22,
                                  fontWeight: FontWeight.w800,
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
                                  children: <Widget>[
                                    Image.asset("assets/images/icon_date.png",
                                        width: 24, height: 24),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 4,
                                      ),
                                      child: Text(
                                        '2019년 1월 26일 (토)',
                                        style: TextStyle(
                                          color: Color(0xff4525c69),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400,
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
                                  top: 4,
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Image.asset("assets/images/icon_clock.png",
                                        width: 24, height: 24),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 4,
                                      ),
                                      child: Text(
                                        '오후 3시-6시',
                                        style: TextStyle(
                                          color: Color(0xff4525c69),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400,
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
                                  top: 4,
                                  bottom: 12,
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Image.asset("assets/images/icon_place.png",
                                        width: 24, height: 24),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 4,
                                      ),
                                      child: Text(
                                        '강남역 8번 출구 하이퍼커넥트 14층',
                                        style: TextStyle(
                                          color: Color(0xff4525c69),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400,
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
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 24,
                                  right: 24,
                                  top: 12,
                                  bottom: 12,
                                ),
                                child: Text(
                                  '이번 전체회의에서는 디자인을 잘 하는 방법에 대한 세미나가 있을 예정입니다. 함께 팀활동을 할 예정이니, 노트북을 가져와주시길 바랍니다. 그 후에는 자유롭게 프로젝트팀 회의 시간을 드릴 예정입니다. 오시는 분들 모두 회의 준비도 열시뮈 해서 만나요!!',
                                  style: TextStyle(
                                    color: Color(0xff4525c69),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
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
                                    child: MaterialButton(
                                      elevation: 0,
                                      highlightElevation: 0,
                                      padding: EdgeInsets.symmetric(
                                        vertical: 15.0,
                                        horizontal: 30.0,
                                      ),
                                      color: Color(0xffffffff),
                                      onPressed: () => debugPrint('clicked'),
                                      child: Text('참석할게요'),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: MaterialButton(
                                      elevation: 0,
                                      highlightElevation: 0,
                                      padding: EdgeInsets.symmetric(
                                        vertical: 15.0,
                                        horizontal: 30.0,
                                      ),
                                      color: Color(0xffffffff),
                                      onPressed: () => debugPrint('clicked'),
                                      child: Text('불참할게요'),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              CustomScrollView(
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
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  IconButton(
                                    onPressed: () => debugPrint('clicked'),
                                    padding: EdgeInsets.only(
                                      right: 16,
                                      top: 16,
                                      bottom: 16,
                                    ),
                                    icon: Image.asset(
                                      "assets/images/icon_delete.png",
                                      width: 24,
                                      height: 24,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                '전체회의 공지',
                                style: TextStyle(
                                  color: Color(0xff525c69),
                                  fontSize: 22,
                                  fontWeight: FontWeight.w800,
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
                                  children: <Widget>[
                                    Image.asset("assets/images/icon_date.png",
                                        width: 24, height: 24),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 4,
                                      ),
                                      child: Text(
                                        '2019년 1월 26일 (토)',
                                        style: TextStyle(
                                          color: Color(0xff4525c69),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400,
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
                                  top: 4,
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Image.asset("assets/images/icon_clock.png",
                                        width: 24, height: 24),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 4,
                                      ),
                                      child: Text(
                                        '오후 3시-6시',
                                        style: TextStyle(
                                          color: Color(0xff4525c69),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400,
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
                                  top: 4,
                                  bottom: 12,
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Image.asset("assets/images/icon_place.png",
                                        width: 24, height: 24),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 4,
                                      ),
                                      child: Text(
                                        '강남역 8번 출구 하이퍼커넥트 14층',
                                        style: TextStyle(
                                          color: Color(0xff4525c69),
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400,
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
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 24,
                                  right: 24,
                                  top: 12,
                                  bottom: 12,
                                ),
                                child: Text(
                                  '이번 전체회의에서는 디자인을 잘 하는 방법에 대한 세미나가 있을 예정입니다. 함께 팀활동을 할 예정이니, 노트북을 가져와주시길 바랍니다. 그 후에는 자유롭게 프로젝트팀 회의 시간을 드릴 예정입니다. 오시는 분들 모두 회의 준비도 열시뮈 해서 만나요!!',
                                  style: TextStyle(
                                    color: Color(0xff4525c69),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
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
                                    child: MaterialButton(
                                      elevation: 0,
                                      highlightElevation: 0,
                                      padding: EdgeInsets.symmetric(
                                        vertical: 15.0,
                                        horizontal: 30.0,
                                      ),
                                      color: Color(0xffffffff),
                                      onPressed: () => debugPrint('clicked'),
                                      child: Text('참석할게요'),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: MaterialButton(
                                      elevation: 0,
                                      highlightElevation: 0,
                                      padding: EdgeInsets.symmetric(
                                        vertical: 15.0,
                                        horizontal: 30.0,
                                      ),
                                      color: Color(0xffffffff),
                                      onPressed: () => debugPrint('clicked'),
                                      child: Text('불참할게요'),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
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
          SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 60, right: 36),
                  child: Container(
                    width: 54.0,
                    height: 54.0,
                    child: RawMaterialButton(
                      fillColor: Color(0xfffc5e5d),
                      shape: CircleBorder(),
                      child: Image.asset(
                        "assets/images/icon_write.png",
                        width: 24,
                        height: 24,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EditPage(),
                            fullscreenDialog: true,
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomSheet: BottomAppBar(
        child: BottomNavigationBar(
          currentIndex: bottomSelectedIndex,
          onTap: (index) {
            bottomTapped(index);
          },
          unselectedItemColor: Color(0xff525c69),
          selectedItemColor: Color(0xff4f42e9),
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              activeIcon: Image.asset(
                "assets/images/icon_meeting_active.png",
                width: 24,
                height: 24,
              ),
              icon: Image.asset(
                "assets/images/icon_meeting.png",
                width: 24,
                height: 24,
              ),
              title: Container(
                padding: EdgeInsets.only(top: 5, bottom: bottomPadding),
                child: Text(
                  '전체회의',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w800),
                ),
              ),
            ),
            BottomNavigationBarItem(
              activeIcon: Image.asset(
                "assets/images/icon_teamstudy_active.png",
                width: 24,
                height: 24,
              ),
              icon: Image.asset(
                "assets/images/icon_teamstudy.png",
                width: 24,
                height: 24,
              ),
              title: Container(
                padding: EdgeInsets.only(top: 5, bottom: bottomPadding),
                child: Text(
                  '팀스터디',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w800),
                ),
              ),
            ),
            BottomNavigationBarItem(
              activeIcon: Image.asset(
                "assets/images/icon_appproject_active.png",
                width: 24,
                height: 24,
              ),
              icon: Image.asset(
                "assets/images/icon_appproject.png",
                width: 24,
                height: 24,
              ),
              title: Container(
                padding: EdgeInsets.only(top: 5, bottom: bottomPadding),
                child: Text(
                  '앱프로젝트',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w800),
                ),
              ),
            ),
            BottomNavigationBarItem(
              activeIcon: Image.asset(
                "assets/images/icon_setting_active.png",
                width: 24,
                height: 24,
              ),
              icon: Image.asset(
                "assets/images/icon_setting.png",
                width: 24,
                height: 24,
              ),
              title: Container(
                padding: EdgeInsets.only(top: 5, bottom: bottomPadding),
                child: Text(
                  '설정',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w800),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
