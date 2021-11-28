import 'package:flutter/material.dart';
import 'package:news_header/config/constants.dart';
import 'package:news_header/config/utils.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.error,
            size: 50,
            color: Colors.red.shade700,
          ),
          Utils.verticalSpacer(),
          Text(
            AppString.error,
            style: Theme.of(context).textTheme.headline6,
          ),
          Utils.verticalSpacer(space: 8.0),
          const SizedBox(
            width: 500,
            child: Text(
              AppString.tryAgain,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ),
          Utils.verticalSpacer(),
          TextButton(onPressed: () {}, child: const Text("Retry"))
        ],
      ),
    );
  }
}
