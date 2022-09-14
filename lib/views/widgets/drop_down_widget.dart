import 'package:flutter/material.dart';

var selecteditems = [];

class DropDownWidget extends StatelessWidget {
  const DropDownWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Material(
      color: Colors.transparent,
      child: Container(
        padding: EdgeInsets.all(32),
        color: Colors.white,
        margin: EdgeInsets.symmetric(
          horizontal: width * 0.3,
          vertical: height / 5,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Select interest",
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              ...List.generate(
                                selecteditems.length,
                                (index) => SelectedChip(
                                  onPressedClose: () {
                                    selecteditems.removeAt(index);
                                  },
                                  name: selecteditems[index],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.expand_more,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            // GestureDetector(
            //   onTap: () {},
            //   child: Container(
            //     padding: EdgeInsets.all(8),
            //     margin: EdgeInsets.all(0),
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(16),
            //       border: Border.all(
            //         width: 1.0,
            //         color: Colors.black,
            //       ),
            //     ),
            //     child: Row(
            //       children: [
            //         Expanded(
            //           child: Row(
            //             children: [
            //               ...List.generate(
            //                 3,
            //                 (index) => SelectedChip(
            //                   name: "Selected $index",
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //         Align(
            //           alignment: Alignment.centerRight,
            //           child: IconButton(
            //             onPressed: () {},
            //             icon: Icon(
            //               Icons.expand_more,
            //             ),
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            ItemsToSelectWidget()
          ],
        ),
      ),
    );
  }
}

class SelectedChip extends StatelessWidget {
  final void Function()? onPressedClose;
  final String name;
  const SelectedChip({
    super.key,
    required this.name,
    this.onPressedClose,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
      margin: EdgeInsets.only(left: 2, top: 4, bottom: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(64),
        border: Border.all(
          width: 1.0,
          color: Colors.black,
        ),
        color: Colors.grey,
      ),
      child: Row(
        children: [
          Text(
            name,
          ),
          IconButton(
            onPressed: onPressedClose,
            icon: Icon(
              Icons.cancel_outlined,
            ),
          ),
        ],
      ),
    );
  }
}

class ItemsToSelectWidget extends StatelessWidget {
  const ItemsToSelectWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.only(bottom: 120),
      width: width,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            spreadRadius: 2.0,
            blurRadius: 3.0,
            color: Colors.grey,
          )
        ],
        color: Colors.white,
      ),
      child: ListView(
        children: [
          Wrap(
            children: [
              ...List.generate(
                10,
                (index) => SizedBox(
                  width: 220,
                  child: ListTile(
                    onTap: () {
                      selecteditems.add("Item ${index + 1}");
                    },
                    title: Text("Item ${index + 1}"),
                    leading: Icon(Icons.check_box),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
