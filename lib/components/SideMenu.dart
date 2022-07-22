import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:windows/components/SideMenuItem.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: 250,
      color: Colors.grey.shade900,
      child: Column(
        children: [
          ListTile(
            leading: const Icon(Icons.flash_on_rounded,
                color: Colors.amber, size: 32.0),
            title: Text(
              'Sparky',
              style: GoogleFonts.kaushanScript(
                  color: Colors.amber,
                  fontSize: 32,
                  fontWeight: FontWeight.w900),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SideMenuItem(
                title: 'Flow Podcast',
                iconUrl:
                    'https://yt3.ggpht.com/ytc/AKedOLR_egFjYdNAsPnkZMdgBvUnxWpqngRf9v69b7Ogww=s800-c-k-c0x00ffffff-no-rj',
                onClickCallback: () {}),
          )
        ],
      ),
    );
  }
}
