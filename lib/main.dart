import 'package:flutter/material.dart';
import 'SubjectFaculty.dart';
void main() {
  runApp(MaterialApp(
    home: MyList(),
  ));
}

class MyList extends StatefulWidget {
  const MyList({Key? key}) : super(key: key);

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {

  // List<String> subjects =[
  //   "AI_DS",
  //   "DMBI",
  //   "WebX",
  //   "WT",
  //   "MAD_PWA",
  //   "SN_Lab",
  //   "BI_Lab",
  //   "EHF_Lab"
  //  ];


  List<SubjectFaculty> subjects =[
    SubjectFaculty(sub:"AI_DS",teacher:"Prof. Prasad Padalkar"),
    SubjectFaculty(sub:"MAD_PWA",teacher:"Prof. Nilesh Ghavate"),
  ];

Widget subjectTemplate(sub){
  return Card(

    margin: EdgeInsets.fromLTRB(10.0,10.0,10.0,10.0),
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:<Widget> [
          Text(sub.subject),
          SizedBox(height: 10.0,),
          Text(sub.faculty),
        ],
      ),
    )

  );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text ("Subjects"),
        centerTitle: true,
      ),
      body: Column(
        children: subjects.map((sub) => subjectTemplate(sub)).toList(),
      ),

    );
  }
}


