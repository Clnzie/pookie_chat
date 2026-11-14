import 'package:flutter/material.dart';
import 'package:pookie_chat/utils/Color.dart';

final ButtonStyle btnStyle = ElevatedButton.styleFrom(
  backgroundColor: ColorUtils.btnColor,
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 29),
);
