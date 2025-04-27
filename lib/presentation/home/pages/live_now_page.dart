// import 'package:flutter/material.dart';

// import '../../../data/model/live_model.dart';
// import '../widget/live_now_card.dart';

// class LiveNowPage extends StatelessWidget {
//   const LiveNowPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Sedang Live'),
//       ),
//       body: GridView.builder(
//         padding: const EdgeInsets.all(16.0),
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           crossAxisSpacing: 20.0,
//           mainAxisSpacing: 20.0,
//           childAspectRatio: 9 / 12,
//         ),
//         itemCount: liveNows.length,
//         itemBuilder: (context, index) => LiveNowCard(
//           item: liveNows[index],
//         ),
//       ),
//     );
//   }
// }
