import 'package:flutter/material.dart';

import '../constants/colors.dart';
import 'custom.text.field.dart';

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
            constraints: const BoxConstraints(maxWidth: 700),
            child: Row(
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
            ),
          ),
          const SizedBox(height: 15),
          // message
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: CustomTextField(
              hintText: 'Votre message',
              maxLines: 20,
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
                  onTap: () {}, child: Image.asset('github.png', width: 28)),
              InkWell(
                  onTap: () {}, child: Image.asset('linkedin.png', width: 28)),
              InkWell(
                  onTap: () {}, child: Image.asset('facebook.png', width: 28)),
              InkWell(
                  onTap: () {}, child: Image.asset('instagram.png', width: 28)),
              InkWell(
                  onTap: () {}, child: Image.asset('telegram.png', width: 28)),
            ],
          )
        ],
      ),
    );
  }
}
