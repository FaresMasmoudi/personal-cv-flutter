import 'package:flutter/material.dart';
import 'package:personalcv/widgets/web_view_screen.dart';

import '../constants/colors.dart';
import '../constants/contact_links.dart';
import 'custom_text_field.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: CustomColor.bgLight1,
      child: Column(
        children: [
          // title
          const Text(
            'Contactez Moi',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: CustomColor.whitePrimary),
          ),
          const SizedBox(height: 50),
          ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 700, maxHeight: 100),
              child: const Column(
                children: [
                  // nom
                  Flexible(
                      child: CustomTextField(
                    hintText: 'Votre nom',
                  )),
                  SizedBox(height: 15),
                  //email
                  Flexible(
                      child: CustomTextField(
                    hintText: 'Votre email',
                  ))
                ],
              )),
          const SizedBox(height: 15),
          // message
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: const CustomTextField(
              hintText: 'Votre message',
              maxLines: 16,
            ),
          ),
          const SizedBox(height: 20),
          // send button
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                    onPressed: () {}, child: const Text('Envoyer'))),
          ),
          const SizedBox(height: 30),
          ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 300),
              child: const Divider()),
          const SizedBox(height: 15),
          // sns icon button links
          Wrap(
            spacing: 12,
            runSpacing: 12,
            alignment: WrapAlignment.center,
            children: [
              InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            WebViewScreen(url: ContactLinks.github),
                      ),
                    );
                  },
                  child: Image.asset('assets/github.png', width: 28)),
              InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            WebViewScreen(url: ContactLinks.linkedIn),
                      ),
                    );
                  },
                  child: Image.asset('assets/linkedin.png', width: 28)),
              InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            WebViewScreen(url: ContactLinks.facebook),
                      ),
                    );
                  },
                  child: Image.asset('assets/facebook.png', width: 28)),
              InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            WebViewScreen(url: ContactLinks.instagram),
                      ),
                    );
                  },
                  child: Image.asset('assets/instagram.png', width: 28)),
              InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            WebViewScreen(url: ContactLinks.telegram),
                      ),
                    );
                  },
                  child: Image.asset('assets/telegram.png', width: 28)),
            ],
          )
        ],
      ),
    );
  }

  Row buildNameEmailFieldDesktop() {
    return Row(
      children: [
        // nom
        Flexible(
            child: CustomTextField(
          hintText: 'Votre nom',
        )),
        const SizedBox(width: 15),
        //email
        Flexible(
            child: CustomTextField(
          hintText: 'Votre email',
        ))
      ],
    );
  }
}