import 'package:alif/home/widgets/contact_card.dart';
import 'package:alif/home/widgets/footer.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                scale: 7,
                image: AssetImage("assets/images/back.png"),
                repeat: ImageRepeat.repeat,
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
            width: double.infinity,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 600),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("VISJON",
                      style: Theme.of(context).textTheme.displayMedium),
                  const SizedBox(height: 20),
                  Text(
                    "Alif Institutts visjon er at muslimer skal forstå sine religiøse tekster",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 30),
          const ContactCard(
              image: 'assets/images/profile.png',
              name: 'Sufian Musab',
              role: 'Grunnlegger og Arabisklærer',
              description:
                  'Ustadh Sufian er utdannet Sivilokonom fra Norges Handelshoyskole i Bergen. Det var under et internship i Cairo at Sufian fikk dyp interesse for Arabisk som forte han til Jordan. Han fullforte programmet i klassisk arabisk hos Oasid Institute i Amman, Jordan (5/5 nivaer). Under hans opphold studerte han også bøker i islamske vitenskap og fikk ljazah fra den ledende arabisk filologen Shaykh Ali Hani i grammatikk boken Al-Ajrumiyyah. Ustadh Sufian har siden utviklet et pensum for Norse studenter og undervist i to år i Norge.'),
          const ContactCard(
              image: 'assets/images/profile2.png',
              name: 'Usman Andreas',
              role: 'Arabisklærer',
              description:
                  'Ustadh Usman har studert arabisk fra ung alder, og har alltid hatt en sterk forkjærlighet og fascinasjon for spräk generelt, og i sarlig grad det arabiske språket. Han har lingvistisk bakgrunn med utdanning fra UiO i Nordiske språk, i tillegg til à ha studert en rekke andre klassiske sävel som moderne språk, slik som latin, gresk, hebraisk, arameisk, persisk, fransk og italiensk m.fl. Han ble selv eksponert for den sakalte "naturmetoden" i Roma, da han studerte latin og gresk der ett år, og har siden vert en proponent for en mer levende tilnærming til språklaring.'),
          const ContactCard(
              image: 'assets/images/profile3.png',
              name: 'Sohaib Ahmed',
              role: 'Utvikler',
              description:
                  'Sohaib jobber som utvikler for både apper og nettsider. Vi lever i en digital verden, derfor er det også viktig at Alif også har en digital platfrom. Han og har hatt ansvaret til å bygge Alif sin nettside, slik at brukerne kan se informasjon og sende hendvendelser samtidig også kunne registrere seg på kurs.'),
          const SizedBox(height: 30),
          const Footer()
        ],
      ),
    );
  }
}
