import 'package:flutter/material.dart';

class TaskDetailsPage extends StatelessWidget {
  final String location;
  final String taskName;
  final String defaultST = '12:00 pm'; // Default date
  final String defaultET = '12:30 pm'; // Default date
  final String description = '...'; // Default description

  const TaskDetailsPage(
      {Key? key, required this.location, required this.taskName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEFAED),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFEFAED),
        title: const Padding(
          padding: EdgeInsets.fromLTRB(10, 25, 10, 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "",
              ),
              Text(
                "Edit Remind Item",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(
                "        ",
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Select Location Card

            const SizedBox(height: 15),
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              color: const Color(0xFFFEFAED),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, top: 13, bottom: 13, right: 20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // First Column (Icon)
                    const Icon(Icons.location_on, size: 27, color: Colors.pink),
                    const SizedBox(width: 15),
                    // Second Column (Two Rows of Text)
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // First Row of Text (Font size 10, Gray color)
                          const Text(
                            'Location',
                            style: TextStyle(
                              fontSize: 11,
                              color: Colors.black54,
                            ),
                          ),
                          // Second Row of Text (Font size 15)
                          Text(
                            location,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Third Column (Icon)
                    const Icon(Icons.arrow_drop_down, size: 35),
                  ],
                ),
              ),
            ),

            // First Card
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              color: const Color(0xFFFEFAED),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, top: 13, bottom: 13, right: 20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // First Row of Text (Font size 10, Gray color)
                          const Text(
                            'Item\'s Name',
                            style: TextStyle(
                              fontSize: 11,
                              color: Colors.black54,
                            ),
                          ),
                          const SizedBox(height: 2),
                          // Second Row of Text (Font size 15)
                          Text(
                            taskName,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),

            // Second Card
            SizedBox(
              height: 150, // Set the desired height
              child: Card(
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
                color: const Color(0xFFFEFAED),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, top: 13, bottom: 13, right: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment
                        .stretch, // Set crossAxisAlignment here
                    children: [
                      // First Row of Text (Font size 10, Gray color)
                      const Text(
                        'Description',
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.black54,
                        ),
                      ),
                      const SizedBox(height: 10),
                      // Second Row of Text (Font size 15)
                      Text(
                        description,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            Card(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              color: const Color(0xFFFEFAED),
              child: const Padding(
                padding: EdgeInsets.only(
                    left: 20.0, top: 13, bottom: 13, right: 20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // First Column (Icon)
                    Icon(Icons.calendar_month,
                        size: 25, color: Color(0xFF5F33E1)),
                    SizedBox(width: 15),
                    // Second Column (Two Rows of Text)
                    Expanded(
                      // Modification: Wrapped in Expanded
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // First Row of Text (Font size 10, Gray color)
                          Text(
                            'Start Date',
                            style: TextStyle(
                              fontSize: 11,
                              color: Colors.black54,
                            ),
                          ),
                          // Second Row of Text (Font size 15)
                          Text(
                            'February 27, 2024 at 12:10:00 PM',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ), // End of Expanded
                  ],
                ),
              ),
            ),

            const SizedBox(height: 10),
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              color: const Color(0xFFFEFAED),
              child: const Padding(
                padding: EdgeInsets.only(
                    left: 20.0, top: 13, bottom: 13, right: 20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // First Column (Icon)
                    Icon(Icons.calendar_month,
                        size: 25, color: Color(0xFF5F33E1)),
                    SizedBox(width: 15),
                    // Second Column (Two Rows of Text)
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // First Row of Text (Font size 10, Gray color)
                          Text(
                            'End Date',
                            style: TextStyle(
                              fontSize: 11,
                              color: Colors.black54,
                            ),
                          ),
                          // Second Row of Text (Font size 15)
                          Text(
                            'February 27, 2024 at 12:20:00 PM ',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            // Fourth Card
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              ),
              color: const Color(0xFFFEFAED),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, top: 13, bottom: 13, right: 20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // First Column (Text: Repeat)
                    const Text(
                      'Repeat',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(width: 15),
                    // Second Column (Text: End Date and Icon)
                    Expanded(
                      child: Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          SizedBox(
                            width: 90, // Adjust the width as needed
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 229, 221, 255),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween, // Aligns children along the main axis
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Never',
                                      textAlign: TextAlign
                                          .center, // Align text to the center
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Color(0xFF5F33E1),
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  Icon(
                                    Icons.expand_more,
                                    size: 20,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 10),

            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          fixedSize: const Size(double.infinity, 50)),
                      child: const Text(
                        'Save Details',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
