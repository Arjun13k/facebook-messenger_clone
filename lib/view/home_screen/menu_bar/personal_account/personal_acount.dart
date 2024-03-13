import 'package:flutter/material.dart';
import 'package:messenger_clone/core/constant/color_const.dart';
import 'package:messenger_clone/core/constant/image_const.dart';

class PersonalAcoount extends StatelessWidget {
  const PersonalAcoount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Me',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        child:
                            Stack(alignment: Alignment.bottomRight, children: [
                          CircleAvatar(
                            backgroundImage:
                                NetworkImage(ImageCOnstant.profilepic),
                            radius: 40,
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: CircleAvatar(
                              radius: 18,
                              backgroundColor: ColorConstant.primaryWhite,
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.camera_alt_rounded)),
                            ),
                          )
                        ]),
                      ),
                      Text(
                        'ARJUN K',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Leave a note',
                            style: TextStyle(
                                color: ColorConstant.primaryblue,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                          ))
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Accounts',
                style: TextStyle(
                    color: ColorConstant.primaryBlack.withOpacity(.4)),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(ImageCOnstant.profilepic),
                  radius: 20,
                ),
                title: Text('ARJUN K'),
                subtitle: Text('Signed in',
                    style: TextStyle(
                        color: ColorConstant.primaryBlack.withOpacity(.4))),
                trailing: Icon(Icons.done),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://clipart-library.com/images/pc7rqMMRi.jpg"),
                  radius: 20,
                ),
                title: Text('arj__u'),
                subtitle: Text('page',
                    style: TextStyle(
                        color: ColorConstant.primaryBlack.withOpacity(.4))),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://cdn3.iconfinder.com/data/icons/black-easy/512/538474-user_512x512.png"),
                  radius: 20,
                ),
                title: Text('Manage Accounts'),
              ),
              SizedBox(
                height: 10,
              ),
              Text('Profile',
                  style: TextStyle(
                      color: ColorConstant.primaryBlack.withOpacity(.4))),
              SizedBox(
                height: 10,
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://cdn3.iconfinder.com/data/icons/block/32/moon-512.png",
                  ),
                  radius: 20,
                ),
                title: Text('Dark mode'),
                subtitle: Text('System',
                    style: TextStyle(
                        color: ColorConstant.primaryBlack.withOpacity(.4))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
