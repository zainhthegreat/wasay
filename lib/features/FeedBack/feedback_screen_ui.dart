import "package:flutter/material.dart";
class FeedBacksScreenUI extends StatefulWidget {
  const FeedBacksScreenUI({Key? key}) : super(key: key);

  @override
  State<FeedBacksScreenUI> createState() => _FeedBacksScreenUIState();
}

class _FeedBacksScreenUIState extends State<FeedBacksScreenUI> {
  TextEditingController? Feedback;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FeedBack",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),),
      ),
      body: Container(
        color: Colors.blueGrey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text("How do you like our Service?",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //IconButton required
                IconButton(onPressed: (){}, icon:  Icon(Icons.thumb_up, size: 50, color: Colors.tealAccent,)),
                SizedBox(width: 15,),
                IconButton(onPressed: (){}, icon:  Icon(Icons.thumb_down, size: 50, color: Colors.tealAccent,)),

            ],),
          ),
          SizedBox(height: 12,),
          Center(child:
          Container(
            height: 140,
            decoration: BoxDecoration(
              color: Colors.white30,
              border: Border.all(color: Colors.tealAccent, width: 2),
              borderRadius: const BorderRadius.all(Radius.circular(20)),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              controller: Feedback,
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  label: Text("Feedback"),
                  contentPadding: EdgeInsets.only(left: 15)),
            ),
          ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Expanded(
                  child: MaterialButton(
                      color: Colors.teal,
                        onPressed: (){} , child: Text("Submit Feedback", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold) )
                    ),
                ),
              ),
            ],
          ),

      ],)
      )
    );
  }
}
