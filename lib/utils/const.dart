import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget text({required String title}) {
  return Text(
    title,
    style: GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.bold),
  );
}
