import 'package:flutter/material.dart';
import 'package:myportfolio/models/project_link.dart';

class Project {
  String title;
  String shortDescription;
  String longDescription;
  String logoImage;
  List<String> features;
  List<ProjectLink> projectLink;
  List<String> technologies;

  Project({
    @required this.title,
    @required this.shortDescription,
    @required this.longDescription,
    @required this.logoImage,
    @required this.features,
    @required this.projectLink,
    @required this.technologies,
  });

  Project.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    shortDescription = json['shortDescription'];
    longDescription = json['longDescription'];
    logoImage = json['logoImage'];
    features = json['features'];
    if (json['ProjectLink'] != null) {
      projectLink = new List<ProjectLink>();
      json['ProjectLink'].forEach((v) {
        projectLink.add(new ProjectLink.fromJson(v));
      });
    }
    technologies = json['technologies'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['shortDescription'] = this.shortDescription;
    data['longDescription'] = this.longDescription;
    data['logoImage'] = this.logoImage;
    data['features'] = this.features;
    if (this.projectLink != null) {
      data['ProjectLink'] = this.projectLink.map((v) => v.toJson()).toList();
    }
    data['technologies'] = this.technologies;
    return data;
  }
}
