import 'package:features/drawer/widgets/drawer_header.dart';
import 'package:features/drawer/widgets/drawer_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeDrawer extends Drawer {
  HomeDrawer({super.key})
      : super(
            child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 24.0),
            child: Column(
              children: [
                CustomDrawerHeader(),
                const DrawerItem(
                  categoryName: 'Tech Blog',
                  icon: Icons.table_chart,
                ),
                const DrawerItem(
                  categoryName: 'Media Coverage',
                  icon: Icons.video_camera_back,
                ),
                const DrawerItem(
                  categoryName: 'Q&A',
                  icon: Icons.question_answer,
                ),
                const DrawerItem(
                  categoryName: 'Words of Wisddom',
                  icon: Icons.campaign,
                ),
                const DrawerItem(
                  categoryName: 'Travel',
                  icon: Icons.train,
                ),
                const DrawerItem(
                  categoryName: 'Deriv Feature',
                  icon: Icons.new_label,
                ),
                const DrawerItem(
                  categoryName: 'Favorites',
                  icon: Icons.star,
                ),
                const DrawerItem(
                  categoryName: 'Settings',
                  icon: Icons.settings,
                ),
                const Spacer(),
                Text(
                  'Made with ♥️ by Naif Razzouk',
                  style: GoogleFonts.comfortaa(
                    fontSize: 10.0,
                  ),
                ),
              ],
            ),
          ),
        ));
}
