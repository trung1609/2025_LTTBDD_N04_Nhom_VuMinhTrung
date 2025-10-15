import 'package:chat_app/constants.dart';
import 'package:flutter/material.dart';

import '../../l10n/app_localization.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text(t.profile),
        actions: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Row(
              children: [
                Icon(Icons.report_gmailerrorred_rounded),
                SizedBox(width: kDefaultPadding / 2),
                Text(t.report, style: Theme.of(context).textTheme.bodyMedium),
              ],
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(kDefaultPadding * 2),
                bottomRight: Radius.circular(kDefaultPadding * 2),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  maxRadius: 50.0,
                  minRadius: 50.0,
                  backgroundColor: kSecondaryColor,
                  backgroundImage: AssetImage('assets/images/user_2.png'),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      t.nameProfile,
                      style: Theme.of(
                        context,
                      ).textTheme.bodyMedium!.copyWith(fontSize: 18),
                    ),
                    Text(
                      t.classProfile,
                      style: Theme.of(
                        context,
                      ).textTheme.bodyMedium!.copyWith(fontSize: 14.0),
                    ),
                    Text(
                      t.member,
                      style: Theme.of(
                        context,
                      ).textTheme.bodyMedium!.copyWith(fontSize: 14.0),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: kDefaultPadding),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ProfileDetailRow(title: t.studentCode, value: "23010361"),
              ProfileDetailRow(title: t.phone, value: "0868920271"),
            ],
          ),
          SizedBox(height: kDefaultPadding),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ProfileDetailColumn(
                title: "Email",
                value: "23010361@st.phenikaa-uni.edu.vn",
              ),
            ],
          ),
          SizedBox(height: kDefaultPadding),
          Stack(
            alignment: Alignment.center,
            children: [
              ListTile(
                title: Text(
                  t.aboutMe,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Text(
                  t.detailAboutMe,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium!.copyWith(fontSize: 15.0),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ProfileDetailRow extends StatelessWidget {
  const ProfileDetailRow({super.key, required this.title, required this.value});

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: kDefaultPadding / 2,
        right: kDefaultPadding * 1.25,
      ),
      width: MediaQuery.of(context).size.width / 2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: kDefaultPadding / 8),
              Text(
                value,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: kDefaultPadding / 8),
              SizedBox(
                width: MediaQuery.of(context).size.width / 3,
                child: Divider(thickness: 0.7),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ProfileDetailColumn extends StatelessWidget {
  const ProfileDetailColumn({
    super.key,
    required this.title,
    required this.value,
  });

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: kDefaultPadding * 0.5,
        right: kDefaultPadding * 1.2,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 15.0,
                ),
              ),
              SizedBox(height: kDefaultPadding / 2),
              Text(
                value,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 15.0,
                ),
              ),
              SizedBox(height: kDefaultPadding / 2),
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.1,
                child: Divider(thickness: 0.7),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
