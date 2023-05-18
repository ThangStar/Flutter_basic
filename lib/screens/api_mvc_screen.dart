import 'package:first_app/model/user.dart';
import 'package:first_app/view_models/user_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ApiMvcScreen extends StatefulWidget {
  const ApiMvcScreen({Key? key}) : super(key: key);

  @override
  State<ApiMvcScreen> createState() => _ApiMvcScreenState();
}

class _ApiMvcScreenState extends State<ApiMvcScreen> {
  @override
  Widget build(BuildContext context) {
    UserViewModels userViewModels = context.watch();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Api MVC screen"),
      ),
      body: Column(
        children: [
          Expanded(child: ListView.builder(
            itemCount: userViewModels.arrUser.length,
            itemBuilder: (context, index) {
              User user = userViewModels.arrUser[index];
              return ListTile(
                leading: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network(user.picture.large)),
                title: Text(user.email),
                subtitle: Text(user.phone),
                trailing: IconButton(icon: const Icon(Icons.menu), onPressed: () {  },),
              );
            },
          )),
          ElevatedButton(
              onPressed: () => {userViewModels.getArrUser()},
              child: Text("Get data")),
        ],
      ),
    );
  }
}
