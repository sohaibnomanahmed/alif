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
                "Start å lær arabisk med Alif Institutt, vi holder kurs både for nybegynnere og for de som har litt bakgrunn med å studere arabisk fra før. Vi lærer bort klassisk arabisk som er hovedsaklig brukt i Quranen, slik at vi sammen kan forstå den hellige boken bedre",
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
                "Vi tilbyr finansiell hjelp til de som trenger dette, målet er at alle skal kunne lære og økonomien burde ikke bli en hinder. Vi tilbyr også student tilbud til fulltidstudenter som studere ved siden av kurset.",
          ),
          const SizedBox(height: 50),
          const Footer()
        ],
      ),
    );
  }
}
