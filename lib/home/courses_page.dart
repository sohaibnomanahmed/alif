import 'package:flutter/material.dart';

import 'widgets/course_card.dart';
import 'widgets/footer.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  scale: 7,
                  image: AssetImage("assets/images/back.png"),
                  repeat: ImageRepeat.repeat,
                ),
              ),
              padding: const EdgeInsets.all(30),
              width: double.infinity,
              child: Text("KURS",
                  style: Theme.of(context).textTheme.displayMedium)),
          const SizedBox(height: 30),
          const CourseCard(
            image: 'assets/images/course.jpeg',
            name: 'Fra lese til å forstå Koran',
            description:
                'Dette kurset er designet for å ta studenter som kun kan lese Koran til å få et ordforråd på over 300+ ord og kjennskap til grunnleggende arabisk grammatikk så studenten forstår en god del av det de leser i Koranen. Vi skal sammen analysere Surah Yusuf (vil gå over nivå 1 og nivå 2) så studenten begynner å lese Koran fra et grammatisk perspektiv.',
            price: '400 kr/mnd',
            time:
                "Tidspunkt: Klasse 1: Ustadh Sufian: Mandager kl 18-20. Klasse 2: Ustadh Usman: Tirsdager kl 19-21",
            level: "1",
            isAvaiable: true,
          ),
          const CourseCard(
            image: 'assets/images/course.jpeg',
            name: 'Anvendelse av arabisk grammatikk',
            description:
                'På dette nivået tar vi steget videre fra nivå 1 og anvende ting vi har lært på forskjellige tekster. Kurset baserer seg på mye praktisk anvendelse av kunnskapene av nivå 1, slik at studentene lærer å ta med seg kunnskapene i hverdagen samt mange unntak til regler som arabisk grammatikk inneholder.',
            price: 'under opparbeidelse...',
            time: "under opparbeidelse...",
            level: "2",
            isAvaiable: false,
          ),
          const CourseCard(
            image: 'assets/images/course.jpeg',
            name: 'Fordypning i Kasus endelsers (الإعراب)',
            description:
                'Dette kurset er designet for studenter som kan ca 700+ arabiske ord, bøye substantiv og verb, kjenne til de 10 verbformene, skrive nominelle og verbale setninger. Tilsvarende studert nivå 1 og nivå 2 hos Alif (Eller studert 1-2 år med Ustadh Sufian eller Ustadh Uthman tidligere fra Rabita eller ICC). Her vil vi gå i dybden av Kasus endelsers (الإعراب) og etter endt kurs studentene skal være på et viderekommen nivå hvor de kan lese tekster uten kasus endelser og selv kunne analysere grammatikken og vite hvilken الإعراب et ord skal ha, dette gjelder også de fleste koran vers. Per 2023 er nivå 3 delt i to med en egen klasse for språkferdigheter hvor studentene kun snakker arabisk.',
            price: '400 kr/mnd',
            time:
                "Tidspunkt: Torsdager: kl 18-21 (Ustadh Sufian og Ustadh Usman)",
            level: "3",
            isAvaiable: true,
          ),
          const CourseCard(
            image: 'assets/images/course.jpeg',
            name: 'Implementering av alt vi har lært på klassiske tekster ',
            description: 'under opparbeidelse...',
            price: 'under opparbeidelse...',
            time: "under opparbeidelse...",
            level: "4",
            isAvaiable: false,
          ),
          const SizedBox(height: 30),
          const Footer()
        ],
      ),
    );
  }
}
