import 'package:flutter/material.dart';

List<String> city = <String>['City #1', 'City #2', 'City #3', 'City #4', 'City #5'];

class UserPage extends StatefulWidget{

  @override
  State<UserPage> createState() => _UserPage();

}

class _UserPage extends State<UserPage>{

  int adults = 0;
  int childs = 0;

  void changePicker(int, bool){
      if(int == adults){
        if(bool == true){
          adults++;
        } else if(adults != 0){
        adults--;
      } else {
        Null;
      }
    } else if (int == childs){
      if (bool == true){
        childs++;
      } else if(childs != 0){
        childs--;
      } else {
        Null;
      }
    }
  }


  String dropdownValueFrom = city.first;

  String dropdownValueTo = city[1];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Color.fromRGBO(21,104,180,1),
        leading: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Icon(Icons.person_rounded, size: 47,),
        ),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Icon(Icons.pages, size: 33,),
          ),
        ],
        title: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('Hello, ', style: TextStyle(fontSize: 17),),
                    Text('Username', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),)
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 6.0),
                      child: Icon(Icons.location_on, size: 15,),
                    ),
                    Text('City, Country', style: TextStyle(fontSize: 15),)],
                )
              ],
            ),
        ),
      ),


      body: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(21,104,180,1),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40)),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 17.0,),
              child: Column(
                children: [
                const Center(
                  child: Text('Book your flights', style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold, color: Color.fromRGBO(21,104,180,1)),)
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 13.0, bottom: 13),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: 
                        
                        
                        TextButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(21,104,180,1)),
                          ),
                          onPressed: null, 
                          child: Text('One Way', style: TextStyle(color: Colors.white),),
                          ),
                      ),


                      TextButton(
                          onPressed: null, 
                          child: Text('Round Trip', style: TextStyle(color: Color.fromRGBO(21,104,180,1)),
                          ),
                        ),
                        
                    ],
                  ),
                ),
                SizedBox(
                  height: 88,
                  width: MediaQuery.of(context).size.width - 40,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(13)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:                      
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                              const Text('From'),

                              DropdownButton<String>(
                              value: dropdownValueFrom, 
                              icon: const Icon(Icons.arrow_drop_down),
                              onChanged: (String? value) {
                                  setState(() {
                                    dropdownValueFrom = value!;
                                  });
                                },
                              items: city.map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem(
                                  value: value,
                                  child: Text(value),
                                  );
                              }).toList(),
                            ),
                          ],
                        ),
                      ),
                   ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Color.fromRGBO(21,104,180,1),),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Transform.rotate(
                        angle: 0.56,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.airplanemode_on, 
                            color: Color.fromRGBO(21,104,180,1),
                            size: 25,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 88,
                  width: MediaQuery.of(context).size.width - 40,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.circular(13)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:                      
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                              const Text('To'),

                              DropdownButton<String>(
                              value: dropdownValueTo, 
                              icon: const Icon(Icons.arrow_drop_down),
                              onChanged: (String? value) {
                                  setState(() {
                                    dropdownValueTo = value!;
                                  });
                                },
                              items: city.map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem(
                                  value: value,
                                  child: Text(value),
                                  );
                              }).toList(),
                            ),
                          ],
                        ),
                      ),
                   ),
                ),
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text('Adults (12y+)'),
                          Row(
                            children: [
                              IconButton(onPressed: (){
                                setState(() {
                                  changePicker(adults, false);
                                });
                              }, icon: Icon(Icons.remove)),
                              Text(adults.toString()),
                              IconButton(onPressed: (){
                                setState(() {
                                  changePicker(adults, true);
                                });
                              }, icon: Icon(Icons.add)),
                            ],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text('Childs (2 to 12y)'),
                          Row(
                            children: [
                              IconButton(onPressed: (){
                                setState(() {
                                  changePicker(childs, false);
                                });
                              }, icon: Icon(Icons.remove)),
                              Text(childs.toString()),
                              IconButton(onPressed: (){
                                setState(() {
                                  changePicker(childs, true);
                                });
                              }, icon: Icon(Icons.add)),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 150,
                  height: 40,
                  child: Center(
                    child: TextField(
                      onTap: () {},
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Apply Promo'
                      ),
                    ),
                  ),
                ),
                Center(
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(21,104,180,1)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                          side: BorderSide(color: Colors.white,),
                        )
                      )
                    ),
                    onPressed: () {
                      
                    }, 
                    child: Padding(
                      padding: const EdgeInsets.only(left: 6.0, right: 6.0,),
                      child: Text('Search Flights', style: TextStyle(color: Colors.white, fontSize: 12),),
                    ),
                  ),
                )
                ],
              ),
            ),
          ),
        ),
      ),

    );
  }

}