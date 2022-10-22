import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_market_app/model/user_model.dart';
import 'package:flutter_market_app/service/dio_network_src.dart';

class UsersView extends StatefulWidget {
  const UsersView({super.key});

  @override
  State<UsersView> createState() => _UsersViewState();
}

class _UsersViewState extends State<UsersView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<Map<String, dynamic>?>(
        future: DioNetworkSrc.getRequest<Map<String, dynamic>>(
            api: AppNetworkConsts.users),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CupertinoActivityIndicator();
          }
          if (!snapshot.hasData || snapshot.hasError) {
            return const Text('you have not data or error');
          }

          UsersWrapModel? usersWrapper =
              UsersWrapModel.fromJson(snapshot.data!);
          return ListView.builder(
              shrinkWrap: true,
              itemCount: usersWrapper.users!.length,
              itemBuilder: (context, index) {
                Users? user = usersWrapper.users![index];
                return Card(
                  child: ListTile(
                    leading: Image.network(
                      user.image!,
                      loadingBuilder: (context, child, loadingProgress) =>
                          child,
                      errorBuilder: (context, error, stackTrace) =>
                          const CupertinoActivityIndicator(),
                    ),
                    title: Text(user.firstName ?? "name"),
                    subtitle: Text(user.userAgent ?? 'user agent'),
                  ),
                );
              });
        },
      ),
    );
  }
}
