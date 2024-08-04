import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app_s_five_sex_seven/providers/app_config_provider.dart';
import 'package:islami_app_s_five_sex_seven/widget/app_colors.dart';
import 'package:provider/provider.dart';

/// state management X State Widget : widget affect on alot of screen and tap

class Theme_bottom_sheet extends StatefulWidget {
  const Theme_bottom_sheet({super.key});

  @override
  State<Theme_bottom_sheet> createState() => _Theme_bottom_sheetState();
}

class _Theme_bottom_sheetState extends State<Theme_bottom_sheet> {
  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<AppConfigProvider>(context);
    return Container(
      margin: EdgeInsets.all(13),
      color: Colors.yellow,
      child: Column(
        children: [
          InkWell(
            onTap: (){
              ///change ThemeMode to dark
              provider.changeTheme(ThemeMode.dark);
            },
            child: provider.isDarkMode()?
                getSelectedItemWidget(AppLocalizations.of(context)!.dark):
                getUnSelectedItemWidget(AppLocalizations.of(context)!.dark)
          ),
          SizedBox(height:14),
          InkWell(
            onTap: (){
              ///change ThemeMode to light
              provider.changeTheme(ThemeMode.light);
            },
              child:provider.isDarkMode()?
              getUnSelectedItemWidget(AppLocalizations.of(context)!.light):
              getSelectedItemWidget(AppLocalizations.of(context)!.light)
          )
        ],
      ),
    );
  }
  Widget getSelectedItemWidget(String text){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(text,style: Theme.of(context).textTheme.titleLarge?.copyWith(color: AppColors.primaryColor),),
      Icon(Icons.check,color: AppColors.primaryColor,size: 20,),
    ],
  ) ;
  }
  Widget getUnSelectedItemWidget(String text){
    return Text(text,style: Theme.of(context).textTheme.titleLarge,);
  }

}
