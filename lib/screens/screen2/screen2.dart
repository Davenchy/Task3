import 'package:flutter/material.dart';
import 'package:task3/colors.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  static const String routeName = '/screen2';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'BIOSHE',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/3d-jar-mockup.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.55,
                    child: Text(
                      'Nunc pretium felis id tellus pulvinar viverra. Pellentesque pulvinar nunc pretium egestas blandit. Maecenas quis lectus non nisl pharetra vulputate tincidunt eu nunc. Integer quis elementum nunc. Ut suscipit sollicitudin felis, nec tincidunt velit placerat quis.',
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 16,
                        color: kPrimaryColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        'bioshe.io',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: kPrimaryColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
