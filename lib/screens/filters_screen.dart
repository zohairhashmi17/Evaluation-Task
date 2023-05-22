import 'dart:convert';
import 'package:flutter/material.dart';
import '../custom_icons.dart';
import '../model/GenresModel.dart';
import 'package:http/http.dart' as http;
import '../model/PlatformsModel.dart';
import '../model/RegionsModel.dart';
import '../model/TagsModel.dart';
import '../tabs/tabs.dart';

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({Key? key}) : super(key: key);

  @override
  _FiltersScreenState createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {

  List<IconData> icons = [
    CustomIcons.gamepad,
    CustomIcons.search,
    CustomIcons.home,
    CustomIcons.settings,
    CustomIcons.user
  ];

  Future<GenresModel> getGenreApi() async {
    final response = await http.get(Uri.parse("https://api.gamestack.com.pk/genres"));
    // print(response);
    var data = jsonDecode(response.body.toString());
    // print(data);
    // print(ProductsModel.fromJson(data));
    if (response.statusCode == 200) {
      return GenresModel.fromJson(data);
    }
    else {
      return GenresModel.fromJson(data);
    }
  }

  Future<PlatformsModel> getPlatformApi() async {
    final response = await http.get(Uri.parse("https://api.gamestack.com.pk/platforms"));
    // print(response);
    var data = jsonDecode(response.body.toString());
    // print(data);
    // print(ProductsModel.fromJson(data));
    if (response.statusCode == 200) {
      return PlatformsModel.fromJson(data);
    }
    else {
      return PlatformsModel.fromJson(data);
    }
  }

  Future<RegionsModel> getRegionApi() async {
    final response = await http.get(Uri.parse("https://api.gamestack.com.pk/regions"));
    // print(response);
    var data = jsonDecode(response.body.toString());
    // print(data);
    // print(ProductsModel.fromJson(data));
    if (response.statusCode == 200) {
      return RegionsModel.fromJson(data);
    }
    else {
      return RegionsModel.fromJson(data);
    }
  }

  Future<TagsModel> getTagApi() async {
    final response = await http.get(Uri.parse("https://api.gamestack.com.pk/tags"));
    // print(response);
    var data = jsonDecode(response.body.toString());
    // print(data);
    // print(ProductsModel.fromJson(data));
    if (response.statusCode == 200) {
      return TagsModel.fromJson(data);
    }
    else {
      return TagsModel.fromJson(data);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0XFF000719),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder:
                                  (context) => const MyTabs()
                          )
                          );
                        },
                        icon: const Icon(
                          Icons.arrow_back_rounded,
                          size: 30,
                            color: Color(0XFFFF7618)
                        )
                    ),
                    const SizedBox(width: 5,),
                    const Text(
                      "Filters",
                      style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.w700,
                          color: Colors.white
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 15,),
                Expanded(
                  child: ListView(
                          children: [
                            Card(
                              color: Colors.white.withOpacity(0.1),
                              elevation: 7,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  color: Colors.white.withOpacity(0.05),
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ExpansionTile(
                                  iconColor: const Color(0XFFFF7618),
                                  collapsedIconColor: const Color(0XFFFF7618),
                                  leading: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        image: const DecorationImage(
                                          image: AssetImage(
                                            "assets/genreslogo.JPG",
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      )
                                  ),
                                  title: const Text(
                                    "Genres",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20
                                    ),
                                  ),
                                  children: [
                                    FutureBuilder<GenresModel>(
                                        future: getGenreApi(),
                                        builder: (context, snapshot){
                                          if (snapshot.hasData) {
                                            // print("yes");
                                            return ListView.builder(
                                                shrinkWrap: true,
                                                physics: const ClampingScrollPhysics(),
                                                itemCount: snapshot.data!.result!.data!.length,
                                                itemBuilder: (context, index) {
                                                  // print(snapshot.data!.result!.data!.length);
                                                  return Column(
                                                    children: [
                                                      Divider(
                                                        color: Colors.white.withOpacity(0.5),
                                                        thickness: 0.5,
                                                      ),
                                                      ListTile(
                                                        title: Text(
                                                            snapshot.data!.result!.data![index].title.toString(),
                                                          style: const TextStyle(
                                                            fontSize: 20,
                                                            color: Colors.white,
                                                            fontWeight: FontWeight.w300
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  );
                                                }
                                                );
                                          }
                                          else {
                                            // print("no");
                                            return const Center(
                                                child: Text("Loading...",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.white,
                                                  ),
                                                )
                                            );
                                          }
                                        }
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 15,),
                            Card(
                              color: Colors.white.withOpacity(0.1),
                              elevation: 7,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  color: Colors.white.withOpacity(0.05),
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ExpansionTile(
                                  iconColor: const Color(0XFFFF7618),
                                  collapsedIconColor: const Color(0XFFFF7618),
                                  leading: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        image: const DecorationImage(
                                          image: AssetImage(
                                            "assets/platformslogo.JPG",
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      )
                                  ),
                                  title: const Text(
                                    "Platforms",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20
                                    ),
                                  ),
                                  children: [
                                    FutureBuilder<PlatformsModel>(
                                        future: getPlatformApi(),
                                        builder: (context, snapshot){
                                          if (snapshot.hasData) {
                                            // print("yes");
                                            return ListView.builder(
                                                shrinkWrap: true,
                                                physics: const ClampingScrollPhysics(),
                                                itemCount: snapshot.data!.result!.data!.length,
                                                itemBuilder: (context, index) {
                                                  return Column(
                                                    children: [
                                                      Divider(
                                                        color: Colors.white.withOpacity(0.5),
                                                        thickness: 0.5,
                                                      ),
                                                      ListTile(
                                                        title: Text(
                                                          snapshot.data!.result!.data![index].title.toString(),
                                                          style: const TextStyle(
                                                              fontSize: 20,
                                                              color: Colors.white,
                                                              fontWeight: FontWeight.w300
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  );
                                                }
                                            );
                                          }
                                          else {
                                            // print("no");
                                            return const Center(
                                                child: Text("Loading...",
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.white,
                                                  ),)
                                            );
                                          }
                                        }
                                    )
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 15,),
                            Card(
                              color: Colors.white.withOpacity(0.1),
                              elevation: 7,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  color: Colors.white.withOpacity(0.05),
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ExpansionTile(
                                  iconColor: const Color(0XFFFF7618),
                                  collapsedIconColor: const Color(0XFFFF7618),
                                  leading: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        image: const DecorationImage(
                                          image: AssetImage(
                                            "assets/regionslogo.JPG",
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      )
                                  ),
                                  title: const Text(
                                    "Regions",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20
                                    ),
                                  ),
                                    children: [
                                      FutureBuilder<RegionsModel>(
                                          future: getRegionApi(),
                                          builder: (context, snapshot){
                                            if (snapshot.hasData) {
                                              // print("yes");
                                              return ListView.builder(
                                                  shrinkWrap: true,
                                                  physics: const ClampingScrollPhysics(),
                                                  itemCount: snapshot.data!.result!.data!.length,
                                                  itemBuilder: (context, index) {
                                                    // print(snapshot.data!.result!.data!.length);
                                                    return Column(
                                                      children: [
                                                        Divider(
                                                          color: Colors.white.withOpacity(0.5),
                                                          thickness: 0.5,
                                                        ),
                                                        ListTile(
                                                          title: Text(
                                                            snapshot.data!.result!.data![index].title.toString(),
                                                            style: const TextStyle(
                                                                fontSize: 20,
                                                                color: Colors.white,
                                                                fontWeight: FontWeight.w300
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    );
                                                  }
                                              );
                                            }
                                            else {
                                              // print("no");
                                              return const Center(
                                                  child: Text("Loading...",
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.white,
                                                    ),
                                                  )
                                              );
                                            }
                                          }
                                      )
                                    ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 15,),
                            Card(
                              color: Colors.white.withOpacity(0.1),
                              elevation: 7,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  color: Colors.white.withOpacity(0.05),
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ExpansionTile(
                                  iconColor: const Color(0XFFFF7618),
                                  collapsedIconColor: const Color(0XFFFF7618),
                                  leading: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        image: const DecorationImage(
                                          image: AssetImage(
                                            "assets/tagslogo.JPG",
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      )
                                  ),
                                  title: const Text(
                                    "Tags",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20
                                    ),
                                  ),
                                    children: [
                                      FutureBuilder<TagsModel>(
                                          future: getTagApi(),
                                          builder: (context, snapshot){
                                            if (snapshot.hasData) {
                                              // print("yes");
                                              return ListView.builder(
                                                  shrinkWrap: true,
                                                  physics: const ClampingScrollPhysics(),
                                                  itemCount: snapshot.data!.result!.data!.length,
                                                  itemBuilder: (context, index) {
                                                    return Column(
                                                      children: [
                                                        Divider(
                                                          color: Colors.white.withOpacity(0.5),
                                                          thickness: 0.5,
                                                        ),
                                                        ListTile(
                                                          title: Text(
                                                            snapshot.data!.result!.data![index].title.toString(),
                                                            style: const TextStyle(
                                                                fontSize: 20,
                                                                color: Colors.white,
                                                                fontWeight: FontWeight.w300
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    );
                                                  }
                                              );
                                            }
                                            else {
                                              // print("no");
                                              return const Center(
                                                  child: Text("Loading...",
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.white,
                                                    ),
                                                  )
                                              );
                                            }
                                          }
                                      )
                                    ],
                                ),
                              ),
                            ),
                          ],
                        ),
                ),

              ],
            ),
          )
        ),
    );
  }
}
