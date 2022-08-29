import 'package:login/PremiereLeagueModel.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ListAllFootbal extends StatefulWidget {
  const ListAllFootbal({Key? key}) : super(key: key);

  @override
  State<ListAllFootbal> createState() => _ListAllFootbalState();
}

class _ListAllFootbalState extends State<ListAllFootbal> {
  final greenColor = Color.fromARGB(255, 1, 186, 118);
  PremiereLeagueModel? premiereLeagueModel;
  bool isloaded = true;

  void getAllListPL() async {
    setState(() {
      isloaded = false;
    });
    final res = await http.get(
      Uri.parse(
          "https://www.thesportsdb.com/api/v1/json/2/search_all_teams.php?l=English%20Premier%20League"),
    );
    print("status code " + res.statusCode.toString());
    premiereLeagueModel =
        PremiereLeagueModel.fromJson(json.decode(res.body.toString()));
    print("team 0 : " + premiereLeagueModel!.teams![0].strTeam.toString());
    setState(() {
      isloaded = true;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getAllListPL();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Premiere League"),
        backgroundColor: greenColor,
      ),
      body: Center(
        child: Container(
          child: isloaded
              ? ListView.builder(
                  itemCount: premiereLeagueModel!.teams!.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {},
                      child: Card(
                        child: Container(
                          margin: EdgeInsets.all(15),
                          child: Row(
                            children: [
                              Container(
                                  margin: EdgeInsets.only(right: 20),
                                  width: 20,
                                  height: 20,
                                  child: Icon(Icons.people)),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(premiereLeagueModel!
                                      .teams![index].strTeam
                                      .toString()),
                                  Text(premiereLeagueModel!
                                      .teams![index].strStadium
                                      .toString()),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  })
              : CircularProgressIndicator(),
        ),
      ),
    );
  }
}
