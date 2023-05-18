import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //  user profile pic
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                image: const DecorationImage(
                    image: AssetImage("assets/images/lady.jpg"),
                    fit: BoxFit.cover)),
          ),

          const SizedBox(height: 24),
          //  user name
          Text(
            "Zoey K.",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          //  designer
          Container(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Theme.of(context).scaffoldBackgroundColor
            ),
            child: Text(
                "UI Designer",
                style: Theme.of(context).textTheme.bodySmall,
          )
          ),
        ],
      ),
    );
  }
}
