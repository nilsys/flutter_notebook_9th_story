import 'package:flutter/material.dart';

class TaskManagementHomePage extends StatefulWidget {
  @override
  _TaskManagementHomePageState createState() => _TaskManagementHomePageState();
}

class _TaskManagementHomePageState extends State<TaskManagementHomePage> {
  int _pageIndex = 0;
  int _topTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu),
        ),
        backgroundColor: Colors.grey[200],
        elevation: 0,
        title: Text(
          "TODOS",
          style: TextStyle(color: Colors.deepOrange),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none),
          ),
          IconButton(
            icon: Icon(Icons.search),
          )
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              top: 16,
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32),
                      topRight: Radius.circular(32),
                    )),
                padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 28),
                              child: Text(
                                "TASKS",
                                style: TextStyle(color: _topTabIndex == 0 ? Colors.white : Colors.grey),
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                _topTabIndex = 0;
                              });
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  _topTabIndex == 0 ? Colors.deepOrange : Colors.grey[100]),
                              // backgroundColor: _topTabIndex == 1 ? Colors.deepOrange : Colors.grey
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          ElevatedButton(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16),
                              child: Text(
                                "CHECKLIST",
                                style: TextStyle(color: _topTabIndex == 1 ? Colors.white : Colors.grey),
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                _topTabIndex = 1;
                              });
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  _topTabIndex == 1 ? Colors.deepOrange : Colors.grey[100]),
                              // backgroundColor: _topTabIndex == 1 ? Colors.deepOrange : Colors.grey
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                        flex: 10,
                        child: _topTabIndex == 0
                            ? Column(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Row(
                                      children: [
                                        Text('In Progress'),
                                        Icon(Icons.arrow_drop_down),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 15,
                                    child: ListView.builder(
                                      itemBuilder: (context, index) {
                                        return Card(
                                          shape: index == 0
                                              ? RoundedRectangleBorder(
                                                  side: BorderSide(
                                                  color: Colors.grey,
                                                ))
                                              : null,
                                          margin: EdgeInsets.only(bottom: 16, left: 4, right: 4),
                                          child: Padding(
                                            padding: const EdgeInsets.all(12.0),
                                            child: Column(
                                              children: [
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text("Brands.Co Landing page\nIdea"),
                                                    Text(
                                                      "Due Today\n14 Ocd",
                                                      style: TextStyle(color: Colors.deepOrange, fontSize: 12),
                                                    )
                                                  ],
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(vertical: 8),
                                                  child: Row(
                                                    children: [
                                                      Container(
                                                        child: Text(
                                                          "HIGH",
                                                          style: TextStyle(
                                                              color: Colors.orange,
                                                              fontSize: 12,
                                                              fontWeight: FontWeight.bold),
                                                        ),
                                                        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                                                        decoration: BoxDecoration(
                                                          color: Colors.orange[50],
                                                          borderRadius: BorderRadius.circular(2),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 12,
                                                      ),
                                                      Container(
                                                        child: Text(
                                                          "DESIGN",
                                                          style: TextStyle(
                                                              color: Colors.teal,
                                                              fontSize: 12,
                                                              fontWeight: FontWeight.bold),
                                                        ),
                                                        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                                                        decoration: BoxDecoration(
                                                          color: Colors.teal[50],
                                                          borderRadius: BorderRadius.circular(2),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons.attach_file_outlined,
                                                      size: 16,
                                                    ),
                                                    Text("1"),
                                                    Spacer(),
                                                    Padding(
                                                      padding: const EdgeInsets.all(8.0),
                                                      child: Text(
                                                        "Dreamwalker",
                                                        style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                                                      ),
                                                    ),
                                                    CircleAvatar(),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  )
                                ],
                              )
                            : Placeholder())
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 8,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.deepOrange,
        onTap: (index) {
          setState(() {
            _pageIndex = index;
          });
        },
        currentIndex: _pageIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "My Task"),
          BottomNavigationBarItem(icon: Icon(Icons.apps), label: "Subscription"),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: "Calendar")
        ],
      ),
    );
  }
}
