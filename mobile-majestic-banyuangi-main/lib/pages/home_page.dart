import 'package:flutter/material.dart';
import 'package:majestic_banyuangi/widgets/card_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (() => Navigator.pushNamed(context, '/profile')),
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://images.pexels.com/photos/1832324/pexels-photo-1832324.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                          ),
                        ),
                      ),
                    ),
                    Image.asset(
                      'assets/images/majestic_banyuangi.png',
                      height: 60.0,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: const Text(
                  "Find Your\nDream Destination",
                  style: TextStyle(
                    fontSize: 28,
                    letterSpacing: 3,
                    height: 1.2,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                color: Colors.white,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TabBar(
                    labelPadding: const EdgeInsets.symmetric(horizontal: 20),
                    labelColor: const Color(0xFF73C993),
                    unselectedLabelColor: Colors.grey,
                    controller: _tabController,
                    isScrollable: true,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: CircleTabIndicator(
                        color: const Color(0xFF73C993), radius: 4),
                    tabs: const [
                      Tab(text: 'Destination'),
                      Tab(text: 'Event'),
                    ],
                  ),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                width: double.maxFinite,
                height: MediaQuery.of(context).size.height,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Column(
                      children: const [
                        CardWidget(),
                      ],
                    ),
                    Column(
                      children: const [
                        CardWidget(),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CircleTabIndicator extends Decoration {
  final BoxPainter _painter;

  CircleTabIndicator({@required Color? color, @required double? radius})
      : _painter = _CirclePainter(color!, radius!);

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) => _painter;
}

class _CirclePainter extends BoxPainter {
  final Paint _paint;
  final double radius;

  _CirclePainter(Color color, this.radius)
      : _paint = Paint()
          ..color = color
          ..isAntiAlias = true;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    final Offset circleOffset =
        offset + Offset(cfg.size!.width / 2, cfg.size!.height - radius);
    canvas.drawCircle(circleOffset, radius, _paint);
  }
}
