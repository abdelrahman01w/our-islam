import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Radioo extends StatelessWidget {
  const Radioo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height:MediaQuery.of(context).size.height*0.14 ,),
        Image.asset('assets/images/551-5517026_radio-vector-png-old-radio-png-vector-transparent.png')
        ,SizedBox(height:MediaQuery.of(context).size.height*0.04 ,),
        Text(AppLocalizations.of(context)!.text_radio,style: Theme.of(context).textTheme.bodyLarge,)
    ,SizedBox(height:MediaQuery.of(context).size.height*0.08 ,)
    , Row(
          mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/Icon metro-next.png')
    ,SizedBox(width:MediaQuery.of(context).size.width*0.2 ,),
    Image.asset('assets/images/Icon awesome-play.png',)
        ,SizedBox(width:MediaQuery.of(context).size.width*0.2 ,),
    Image.asset('assets/images/Icon metro-next.left.png',),
      ],
    )

      ],
    );
  }
}