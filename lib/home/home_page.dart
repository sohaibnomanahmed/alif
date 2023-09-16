import 'package:alif/home/widgets/footer.dart';
import 'package:alif/home/widgets/front_page_info_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

// TODO contribution for images
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                scale: 7,
                image: AssetImage("assets/images/back2.png"),
                repeat: ImageRepeat.repeat,
              ),
            ),
            padding: const EdgeInsets.all(30),
            height: 450,
            width: double.infinity,
            alignment: Alignment.center,
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 600),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    width: 120,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Start din reise gjennom det arabiske språket sammen med Alif",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.displayMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor,
                        ),
                  ),
                ],
              ),
            ),
          ),
          //const SizedBox(height: 30),
          FrontpageInfoTile(
            mainImage: 'assets/images/main.png',
            title: "Innhold",
            text:
                "Start å lære arabisk med Alif Institutt. Med spesialdesignet pensum for norske studenter tar vi deg fra å lese Koranen til å forstå det arabiske nivået. Vi har 4 nivåer, nivå 1 er designet fra å ta deg fra å lese koranen til å forstå grunnleggende arabisk. Etter å ha vært gjennom høyeste nivå (nivå 4) har du lært 90% av arabisk grammatikk og kan lese en god del klassiske og religiøse tekster på egenhånd",
          ),
          const SizedBox(height: 50),
          FrontpageInfoTile(
            flip: true,
            mainImage: 'assets/images/main2.jpg',
            title: "Lokasjon",
            text:
                "Vi underviser på lokalene til moskeen Islamic Culture Center som er gangsavstand fra Grønland T-bane Stasjon. Vi akn også ka noen klasser via Zoom når det trengs.",
          ),
          const SizedBox(height: 50),
          FrontpageInfoTile(
            mainImage: 'assets/images/main3.png',
            title: "Finansiell hjelp",
            text:
                "Alif Institutts visjon er at muslimer skal forstå sine religiøse tekster. Dette skal skape individer med integritet og stolthet i sin religion gjennom kunnskap. Vi tar betalt slik at selskapet vokser og vi kan gjøre dette på heltid og skreddersy profesjonelle kurs. Gitt vår visjon vil vi ikke nekte en student å studere basert på økonomiske begrensninger, derfor kan det søkes om økonomisk støtte fra oss. Send oss en epost med din motivasjon og beskriv din situasjon til oss for økonomisk støtte",
          ),
          const SizedBox(height: 50),
          const Footer()
        ],
      ),
    );
  }
}
