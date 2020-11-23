import 'package:flutter/material.dart';
import 'package:myportfolio/models/project_link.dart';

class Project {
  String title;
  String shortDescription;
  String longDescription;
  String logoImage;
  String demoVideoLink;
  List<String> features;
  List<ProjectLink> projectLink;
  List<String> technologies;
  List<String> screenshots;

  Project({
    @required this.title,
    @required this.shortDescription,
    @required this.longDescription,
    @required this.logoImage,
    @required this.features,
    @required this.projectLink,
    @required this.technologies,
    this.screenshots,
    this.demoVideoLink,
  });

  Project.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    shortDescription = json['shortDescription'];
    longDescription = json['longDescription'];
    logoImage = json['logoImage'];
    features = json['features'];
    screenshots = json['screenshots'];
    if (json['ProjectLink'] != null) {
      projectLink = new List<ProjectLink>();
      json['ProjectLink'].forEach((v) {
        projectLink.add(new ProjectLink.fromJson(v));
      });
    }
    technologies = json['technologies'];
    demoVideoLink = json['demoVideoLink'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['shortDescription'] = this.shortDescription;
    data['longDescription'] = this.longDescription;
    data['logoImage'] = this.logoImage;
    data['features'] = this.features;
    data['screenshots'] = this.screenshots;
    if (this.projectLink != null) {
      data['ProjectLink'] = this.projectLink.map((v) => v.toJson()).toList();
    }
    data['technologies'] = this.technologies;
    data['demoVideoLink'] = this.demoVideoLink;
    return data;
  }
}
