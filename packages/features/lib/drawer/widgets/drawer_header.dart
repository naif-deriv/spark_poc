import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDrawerHeader extends DrawerHeader {
  CustomDrawerHeader({super.key})
      : super(
          child: Column(
            children: [
              const Icon(
                Icons.account_circle,
                size: 80.0,
              ),
              const SizedBox(
                height: 12.0,
              ),
              Text(
                'Naif Razzouk',
                style: GoogleFonts.comfortaa(
                  fontSize: 32.0,
                ),
              ),
            ],
          ),
        );
}
