import 'package:flutter/material.dart';

import '../constants/themes.dart';
import '../models/data.dart';

class Connections extends StatelessWidget {
  const Connections({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric( vertical: 30.0),
        child: GridView.builder(
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 5.0,
            mainAxisSpacing: 5.0,
          ),
          itemCount: students.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 50.0,
                  backgroundImage: AssetImage(
                    students[index].avatar,
                  ),
                ),
                const SizedBox(height: 5.0),
                Text(
                  students[index].firstName,
                  style: Palette.bodyTextSyle,
                ),
              ],
            );
          },
        ),
    );
  }
}
