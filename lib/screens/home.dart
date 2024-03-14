import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_3c/screens/videoportfolio_updated.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    print(width);
    final statStyle = GoogleFonts.robotoCondensed(
      fontSize: 60,
      fontWeight: FontWeight.w800,
    );
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Gap(22),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => VideoPortfolioScreen(),
                      ),
                    );
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.blue,
                    radius: width * 0.45,
                    child: CircleAvatar(
                      radius: width * 0.45 - 5,
                      backgroundImage:
                          const AssetImage('assets/images/profile_pic.jpg'),
                    ),
                  ),
                ),
                Text(
                  'Renz Barrientos',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.rubik(
                    fontSize: 42,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Actively looking',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Gap(8),
                    FaIcon(
                      FontAwesomeIcons.solidCircleCheck,
                      color: Colors.blue,
                    ),
                  ],
                ),
                const Gap(12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text('Current Level'),
                        Text(
                          'A+',
                          style: statStyle,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text('Projects'),
                        Text(
                          '50',
                          style: statStyle,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              color: Colors.orange.shade300,
              child: Row(
                children: [
                  Text('View my complete profile'),
                  Spacer(),
                  IconButton(
                    onPressed: () async {
                      final url =
                          Uri.parse('https://www.facebook.com/PSUroars');
                      print(await launchUrl(url));
                    },
                    icon: FaIcon(FontAwesomeIcons.arrowRightLong),
                  ),
                  const Gap(8),
                  IconButton(
                    onPressed: () async {
                      final url = Uri.parse('tel:+639991234567');
                      print(await launchUrl(url));
                    },
                    icon: FaIcon(FontAwesomeIcons.phone),
                  ),
                  const Gap(8),
                  IconButton(
                    onPressed: () async {
                      final url = Uri.parse('sms:+639991234567');
                      print(await launchUrl(url));
                    },
                    icon: FaIcon(FontAwesomeIcons.message),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
