import 'package:flutter/material.dart';
import 'list_item.dart';
import 'makanan.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
  
    return ListView(
      padding: EdgeInsets.all(10),
      children: [
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.list_alt_sharp, size: 30),
            SizedBox(width: 10),
            Text('List Kuliner',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          ],
        ),
        SizedBox(height: 10),
        ListView.builder(
          // mengatur panjang / jumlah item dalam list
          shrinkWrap: true, // Solusi untuk nested ListView
          physics: NeverScrollableScrollPhysics(), // Disable scroll untuk nested ListView
          itemCount: listMakanan.length,
          padding: const EdgeInsets.all(10),
          itemBuilder: (context, index) {
            return ListItem(makanan: listMakanan[index]);
          },
        ),
      ],
    );
  }
}
