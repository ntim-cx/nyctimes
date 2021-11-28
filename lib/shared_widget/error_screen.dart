import 'package:flutter/material.dart';
import 'package:news_header/config/constants.dart';
import 'package:news_header/config/utils.dart';

class ErrorScreen extends StatelessWidget {
  final Function onTap;
  final IconData icon;
  final String description, title;
  final bool showButton;
  final Color iconColor;

  const ErrorScreen(
      {Key key,
      this.onTap,
      this.icon = Icons.error,
      @required this.description,
      @required this.title,
      this.showButton = false,
      this.iconColor = AppColors.errorColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 50,
            color: iconColor,
          ),
          Utils.verticalSpacer(),
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .headline6
                .copyWith(fontWeight: FontWeight.w800),
          ),
          Utils.verticalSpacer(space: 8.0),
          SizedBox(
            width: 350,
            child: Text(
              description,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ),
          Utils.verticalSpacer(),
          Visibility(
              visible: showButton,
              child: TextButton(
                  onPressed: () => onTap(), child: const Text("Retry")))
        ],
      ),
    );
  }
}
