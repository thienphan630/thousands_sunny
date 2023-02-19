import 'package:flutter/material.dart';

/// Not found page, handle HTTP *404* error.
///
/// See also:
/// * [RoutePath.notFound]
class NotFoundPage extends StatelessWidget {
  const NotFoundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('404', style: Theme.of(context).textTheme.headline1),
          const Text('Not found!'),
          ElevatedButton(
            onPressed: Navigator.of(context).pop,
            child: const Text('GO BACK'),
          ),
        ],
      ),
    );
  }
}
