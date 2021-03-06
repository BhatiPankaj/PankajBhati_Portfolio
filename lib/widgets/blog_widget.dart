import 'package:pankajkumarbhati_portfolio/config/constants.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;
class BlogWidget extends StatelessWidget {
  final blog;
  final index;
  final length;
  const BlogWidget(this.blog,this.index,this.length);


  @override
  Widget build(BuildContext context) {
    // final width = MediaQuery.of(context).size.width;
    // final height = MediaQuery.of(context).size.height;
    double topBottomPadding = (index == 0 || index == length - 1) ? 16.0 : 8.0;
    return InkWell(
      onTap: ()=>html.window.open(blog.mediumUrl, 'bhatipankaj'),
      child: Card(
        elevation: 2.0,
        margin:
        EdgeInsets.fromLTRB(16.0, topBottomPadding, 16.0, topBottomPadding),
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
                Image.asset(
                  blog.image,
                  fit: BoxFit.fitWidth,
                  // width:  1000,
                  // height: 240,
                ),
              SizedBox(
                height: 16,
              ),
              Text(
                blog.title,
                style: Theme.of(context).textTheme.title,
              ),
              SizedBox(
                height: 8,
              ),
              Text(blog.shortContent,
                  style: Theme.of(context).textTheme.subtitle),
              //Text(blog.virtuals.totalClapCount)
            ],
          ),
        ),
      ),
    );
  }
}