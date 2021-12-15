import 'package:flutter/material.dart';
import 'colors.dart';

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

  static const String routeName = '/screen3';

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SafeArea(
          top: false,
          child: _buildHeader(context),
        ),
        bottomNavigationBar: _buildBottomNavigationBar(context),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: mediaQuery.size.height * 0.25 + mediaQuery.viewPadding.top,
          child: Stack(
            children: [
              SizedBox(
                width: double.infinity,
                child: Image.asset(
                  'assets/images/quran-background.jpg',
                  alignment: Alignment.topCenter,
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  width: MediaQuery.of(context).size.width * .6,
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    'اللهم صلي وسلم علي نبينا محمد وعلي اله وصحبه أجمعين',
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 16.0 + mediaQuery.viewPadding.top,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.more_vert_rounded, color: kPrimaryColor),
                  ),
                ),
              )
            ],
          ),
        ),
        _buildBody(),
      ],
    );
  }

  Widget _buildBody() {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(16),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: kSecondaryColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const PrayDurationCard(
              name: 'الفجر',
              time: '5:30',
              isPM: false,
            ),
            const PrayDurationCard(
              name: 'الشروق',
              time: '6:30',
              isPM: false,
            ),
            const PrayDurationCard(name: 'الظهر', time: '12:30'),
            const PrayDurationCard(name: 'العصر', time: '3:30'),
            const PrayDurationCard(name: 'المغرب', time: '5:30'),
            const PrayDurationCard(name: 'العشاء', time: '6:30'),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomNavigationBar(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const ImageButton('assets/icons/calendar.png'),
              const ImageButton('assets/icons/tasbih.png'),
              const ImageButton('assets/icons/quran.png', isMain: true),
              const ImageButton('assets/icons/clock.png'),
              const ImageButton('assets/icons/checked.png'),
            ],
          ),
        ],
      ),
    );
  }
}

class ImageButton extends StatelessWidget {
  const ImageButton(
    this.asset, {
    Key? key,
    this.isMain = false,
  }) : super(key: key);

  final String asset;
  final bool isMain;

  double get size => isMain ? 60 : 30;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      padding: isMain ? const EdgeInsets.all(12.0) : const EdgeInsets.all(0),
      decoration: BoxDecoration(
        color: isMain ? Colors.white : Colors.transparent,
        shape: BoxShape.circle,
        border: isMain ? Border.all(width: 2, color: kPrimaryColor) : null,
      ),
      child: Image.asset(
        asset,
        fit: BoxFit.cover,
      ),
    );
  }
}

class PrayDurationCard extends StatelessWidget {
  const PrayDurationCard({
    Key? key,
    required this.name,
    required this.time,
    this.isPM = true,
  }) : super(key: key);

  final String name;
  final String time;
  final bool isPM;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(64),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            name,
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                time,
                style: TextStyle(
                  color: kTextColor,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                isPM ? 'مساءاً' : 'صباحاً',
                style: TextStyle(
                  color: kTextColor,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
