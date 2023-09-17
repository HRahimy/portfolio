import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hamza\'s Developer Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        useMaterial3: true,
        textTheme: GoogleFonts.sourceCodeProTextTheme(),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          DetailPanel(),
        ],
      ),
    );
  }
}

class DetailPanel extends StatelessWidget {
  const DetailPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return const Flex(
      direction: Axis.horizontal,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.only(top: 16),
            child: CircleAvatar(
              // radius: 80.0,
              minRadius: 50,
              maxRadius: 80,
              foregroundImage: NetworkImage(
                'https://avatars.githubusercontent.com/u/14905792?s=400&u=28173d3525abd86583cd6a7150b89f5dcbb7a79f&v=4',
              ),
              backgroundColor: Colors.transparent,
            ),
          ),
        ),
        Expanded(
          flex: 4,
          child: InfoList(),
        ),
      ],
    );
  }
}

class InfoList extends StatelessWidget {
  const InfoList({super.key});

  Widget get subtitle {
    return RichText(
      text: TextSpan(
        style: GoogleFonts.sourceCodePro(
          textStyle: const TextStyle(height: 2),
        ),
        children: const <InlineSpan>[
          WidgetSpan(
            child: FaIcon(FontAwesomeIcons.angular),
            alignment: PlaceholderAlignment.middle,
          ),
          TextSpan(
            text: ' Angular',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          TextSpan(text: ' for web apps\n'),
          WidgetSpan(
            child: Image(
              image: AssetImage('assets/icons/icon_flutter.png'),
              width: 20,
              height: 20,
            ),
          ),
          TextSpan(
            text: ' Flutter',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          TextSpan(text: ' for mobile apps\n'),
          WidgetSpan(
            child: Image(
              image: AssetImage('assets/icons/net_core.png'),
              width: 20,
              height: 20,
            ),
          ),
          TextSpan(
            text: ' ASP.NET Core',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          TextSpan(text: ' for server-side applications\n'),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ListTile(
          title: Text(
            'Hamza Yazar',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 32,
            ),
          ),
          trailing: SocialButtons(),
        ),
        ListTile(
          title: const Text(
            'Developing in',
          ),
          subtitle: subtitle,
        ),
      ],
    );
  }
}

class SocialButtons extends StatelessWidget {
  const SocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          onPressed: () {},
          icon: const FaIcon(FontAwesomeIcons.github),
        ),
        IconButton(
          onPressed: () {},
          icon: const FaIcon(FontAwesomeIcons.linkedin),
        ),
      ],
    );
  }
}
