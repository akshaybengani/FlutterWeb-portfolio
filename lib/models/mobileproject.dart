import 'package:flutter/material.dart';

class MobileProject {
  final String pId;
  final String pName;
  final String pImgUrl;
  final String pDesc;
  final String pDate;
  final List<String> pAllImgUrl;
  final Color pColor;
  final String pPubUrl;
  final String pGitUrl;

  const MobileProject({
    this.pId,
    this.pName,
    this.pImgUrl,
    this.pDesc,
    this.pAllImgUrl,
    this.pColor,
    this.pDate,
    this.pGitUrl,
    this.pPubUrl,
  });
}

