import 'package:pankajkumarbhati_portfolio/config/constants.dart';
import 'package:pankajkumarbhati_portfolio/config/blogs.dart';
import 'dart:html' as html;
import 'package:pankajkumarbhati_portfolio/widgets/blog_widget.dart';
import 'package:pankajkumarbhati_portfolio/widgets/responsive_widget.dart';
import 'package:flutter/material.dart';

class BlogTab extends StatefulWidget {
  @override
  _BlogTabState createState() => _BlogTabState();
}

class _BlogTabState extends State<BlogTab> {

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(),
          ),
          Expanded(
            flex: 2,
            child: blogList(),
          ),
          Expanded(
            flex: 1,
            child: Container(),
          )
        ],
      ),
      smallScreen: blogList(),
    );
  }

  Widget blogList() {

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListView.builder(
                itemCount: blogs.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) =>
                    BlogWidget(blogs[index], index, blogs.length)),
            RaisedButton(
              child: Text('More',style: Theme.of(context).textTheme.button.copyWith(color: Colors.white),),
              elevation: 0.0,
              onPressed: () =>
                  html.window.open(Constants.PROFILE_MEDIUM, '4121998bhati'),
            )
          ],
        ),
      ),
    );
  }
}
