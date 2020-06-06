import 'package:flutter/material.dart';
import 'package:catchapp/utils/toast.dart';
import 'package:catchapp/src/webview.dart';

class ToastPage extends StatefulWidget {
  ToastPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _ToastPageState createState() => _ToastPageState();
}

class _ToastPageState extends State<ToastPage> {
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Scaffold(
        resizeToAvoidBottomPadding: false,
        body: WebView(
          onWebViewCreated: (controller) {
            controller.loadUrl('https://www.google.com');
          },
        ),
      ),
    );
  }

  Widget toastInput() {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Container(
            child: TextField(
              controller: textController,
              decoration: InputDecoration(
                  hintText: "Message",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(2),
                  )),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(top: 50),
            height: 45,
            child: RaisedButton(
              onPressed: () {
                if (textController.text.isEmpty) {
                  Toast("Provide non empty message");
                  return;
                }
                Toast(textController.text);
              },
              textColor: Colors.white,
              color: Colors.black,
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Show Toast",
              ),
              shape:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(23)),
            ),
          ),
        ],
      ),
    );
  }
}