import 'dart:convert';
import 'package:evaluation_task/custom_icons.dart';
import 'package:evaluation_task/tabs/new_tabs.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../model/ProductsModel.dart';


class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  final searchController = TextEditingController();
  String query = '';
  List filteredList = [];

  Future<ProductsModel> getProductApi() async {
    final response = await http.get(Uri.parse("https://api.gamestack.com.pk/products/subscribed-products"));
    // print(response);
    var data = jsonDecode(response.body.toString());
    // print(data);
    // print(ProductsModel.fromJson(data));
    if (response.statusCode == 200) {
      return ProductsModel.fromJson(data);
    }
    else {
      return ProductsModel.fromJson(data);
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Text(
                    "Search",
                    style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.w700,
                        color: Colors.white
                    ),
                  ),
                  Expanded(child: Container()),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder:
                              (context) => const MyNewTabs())
                      );
                    },
                    child: const Text(
                      "Filter",
                      style: TextStyle(
                          fontSize: 17,
                          color: Color(0XFFFF7618)
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15,),
              TextFormField(
                controller: searchController,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  prefixIcon: const Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Icon(
                      CustomIcons.search_bar,
                      size: 25,
                      color: Colors.white,
                    ),
                  ),
                  labelText: "Search your favourite game here...",
                  labelStyle: const TextStyle(
                      color: Colors.white
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(color: Colors.white.withOpacity(0.5))
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(color: Colors.white.withOpacity(0.5))
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    query = value;
                  });
                },
              ),
              const SizedBox(height: 20,),
              FutureBuilder<ProductsModel>(
                  future: getProductApi(),
                  builder: (context, snapshot){
                    if (snapshot.hasData) {
                      final gameList = snapshot.data!.result!.data;
                      if (query.isNotEmpty){
                        filteredList = gameList!.where((game){
                          final gameTitle = game.title!.toLowerCase();
                          final gameGenre = game.genre!.first.title!.toLowerCase();
                          final gamePlatform = game.platform!.title!.toLowerCase();
                          final gameRegion = game.region!.title!.toLowerCase();
                          final gameTags = game.tags!.first.title!.toLowerCase();
                          final input = query.toLowerCase();
                          return gameTitle.startsWith(input) || gameGenre.startsWith(input) ||
                              gamePlatform.startsWith(input) || gameRegion.startsWith(input) ||
                              gameTags.startsWith(input);
                        }).toList();
                      }
                      else {
                        filteredList.clear();
                      }

                      return Expanded(
                        child: GridView.builder(
                            shrinkWrap: true,
                            physics: const ScrollPhysics(),
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 0,
                              mainAxisExtent: 300,
                            ),
                            itemCount: filteredList.length,
                            itemBuilder: (context, index) {
                              // print(index);
                              // print(snapshot.data!.result!.data![index].title);
                              return Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.only(top: 35, left: 10, bottom: 10),
                                        margin: const EdgeInsets.only(top: 120),
                                        height: 130,
                                        width: 150,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(15),
                                            border: Border.all(color: Colors.white.withOpacity(0.5))
                                        ),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Text(
                                                filteredList[index].title.toString(),
                                                style: const TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w500
                                                ),
                                                softWrap: false,
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                            Expanded(
                                              child: Text(
                                                  filteredList[index].description.toString(),
                                                  style: TextStyle(
                                                      color: Colors.white.withOpacity(0.5),
                                                      fontSize: 15,
                                                      fontWeight: FontWeight.w300
                                                  ),
                                                  softWrap: false,
                                                  maxLines: 1,
                                                  overflow: TextOverflow.ellipsis
                                              ),
                                            ),
                                            Container(
                                              height: 20,
                                              width: 60,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                  BorderRadius.circular(25),
                                                  color: Colors.blue
                                              ),
                                              child: Center(
                                                child: Text(
                                                  filteredList[index].platform!.title.toString(),
                                                  style: const TextStyle(
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 12
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),

                                      Container(
                                        margin: const EdgeInsets.only(left: 5),
                                        height: 140,
                                        width: 140,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                        child: FutureBuilder<ProductsModel>(
                                          future: getProductApi(),
                                          builder: (context, snapshot) {
                                            if (snapshot.hasData) {
                                              return ClipRRect(
                                                  borderRadius: BorderRadius.circular(20),
                                                  child: Image.network(filteredList[index].image.toString(), fit: BoxFit.cover));
                                            }
                                            else {
                                              return const Center(
                                                  child: Text("Loading...",
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      color: Colors.white,
                                                    ),
                                                  )
                                              );
                                            }
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(width: 25,)
                                ],
                              );
                            }
                        ),
                      );
                    }
                    else {
                      // print("no data");
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
              ),
            ],
          ),
        ),
      ),
      backgroundColor: const Color(0XFF000719),
    );
  }
}
