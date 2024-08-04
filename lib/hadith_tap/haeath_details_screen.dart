import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app_s_five_sex_seven/hadith_tap/hadith.dart';
import 'package:islami_app_s_five_sex_seven/hadith_tap/item_hadieth_details.dart';
import 'package:islami_app_s_five_sex_seven/providers/app_config_provider.dart';
import 'package:islami_app_s_five_sex_seven/quraan_tap/item_sura_details.dart';
import 'package:islami_app_s_five_sex_seven/widget/app_colors.dart';
import 'package:provider/provider.dart';

class Hadeath_details_screen extends StatefulWidget {
  static const String routeName='Hadeath_details_screen';

  @override
  State<Hadeath_details_screen> createState() => _Hadeath_details_screen();
}

class _Hadeath_details_screen extends State<Hadeath_details_screen> {

  @override
  Widget build(BuildContext context) {
    var args =ModalRoute.of(context)?.settings.arguments as HadiethData ; ///for take the sura name from quraan tob
    var provider=Provider.of<AppConfigProvider>(context);

    return Stack(
      children: [
        provider.isDarkMode()?
        Image.asset('assets/images/home_dark_background.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,)
            :
        Image.asset('assets/images/1x/background_home_1x.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,),
    Scaffold(
    appBar: AppBar(
    title: Text(args.title
    ,style:Theme.of(context).textTheme.bodyLarge ,
    ),
    ),
      body:
      Container(
        margin: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.05,
            vertical: MediaQuery.of(context).size.height*0.04),
        decoration: BoxDecoration(
            color: provider.isDarkMode()?
    AppColors.primaryColorDark
        :
    AppColors.whiteColor,
            borderRadius: BorderRadius.circular(22)
        ),
        child: ListView.builder(itemBuilder: (context,index){
          return Item_hadieth_details(content : args.hadeath[index]);
        }, itemCount: args.hadeath.length,),
      ),
    ),
    ]
    );
  }

}
