import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:pastry_app/core/ColorsClass.dart';
import 'package:pastry_app/core/widgets/CustomMenuDialog.dart';

Future<dynamic> showDialogMessage({
  required BuildContext context,
}) async {
  await AwesomeDialog(
          dialogBackgroundColor: ColorsClass.brownColor,
          context: context,
          dialogType: DialogType.noHeader,
          animType: AnimType.rightSlide,
          body: const CustomMenuDialog(),
          btnOk: null,
          width: MediaQuery.of(context).size.width)
      .show();
}
