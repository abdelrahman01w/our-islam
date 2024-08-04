import 'package:flutter/material.dart';
import 'package:islami_app_s_five_sex_seven/hadith_tap/hadith.dart';
import 'package:islami_app_s_five_sex_seven/hadith_tap/haeath_details_screen.dart';

class ItemHadiethName extends StatelessWidget {
  HadiethData hadithh;
 ItemHadiethName({required this.hadithh});
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap : (){ ///for transfer the text to button
         Navigator.of(context).pushNamed(Hadeath_details_screen.routeName
           ,arguments: hadithh///for give sura name and index for sura_details_screen
         );
      },
      child: Text(hadithh.title,
          textAlign: TextAlign.center,
          style:Theme.of(context).textTheme.bodyMedium),
    );
  }
}
