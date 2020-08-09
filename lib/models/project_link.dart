import 'package:flutter/material.dart';
import 'package:myportfolio/constants/constants.dart';

class ProjectLink {
  String link;
  ProjectLinkType linkType;
  String description;

  ProjectLink({
    @required this.link,
    @required this.linkType,
    this.description,
  });

  ProjectLink.fromJson(Map<String, dynamic> json) {
    link = json['link'];
    linkType = json['linkType'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['link'] = this.link;
    data['linkType'] = this.linkType;
    data['description'] = this.description;
    return data;
  }
}
