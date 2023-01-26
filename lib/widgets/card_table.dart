import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(
          children: [
            _SimpleCard(
              icon: Icons.app_registration,
              text: 'General',
              color: Colors.blueAccent,
            ),
            _SimpleCard(
              icon: Icons.directions_bus,
              text: 'Transport',
              color: Colors.deepPurpleAccent,
            ),
          ],
        ),
        TableRow(
          children: [
            _SimpleCard(
              icon: Icons.shopping_bag,
              text: 'Shopping',
              color: Colors.pinkAccent,
            ),
            _SimpleCard(
              icon: Icons.money,
              text: 'Bills',
              color: Colors.orangeAccent,
            ),
          ],
        ),
        TableRow(
          children: [
            _SimpleCard(
              icon: Icons.movie,
              text: 'Entertainment',
              color: Colors.blue,
            ),
            _SimpleCard(
              icon: Icons.apple,
              text: 'Grocery',
              color: Colors.greenAccent,
            ),
          ],
        ),
      ],
    );
  }
}

class _SimpleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SimpleCard(
      {required this.icon, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      height: 180,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(62, 66, 107, 0.7),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            backgroundColor: color,
            maxRadius: 35,
            child: Icon(icon, size: 35),
          ),
          Text(
            text,
            style: TextStyle(
              color: color,
              fontSize: 19,
            ),
          ),
        ],
      ),
    );
  }
}
