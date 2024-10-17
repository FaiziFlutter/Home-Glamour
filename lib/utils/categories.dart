enum Categories {
  face("Face", "assets/icons/ic_face.svg"),
  hair("Hair", "assets/icons/ic_hair.svg"),
  nails("nails", "assets/icons/ic_nail.svg"),
  body("Body", "assets/icons/ic_body.svg"),
  heena("Heena", "assets/icons/ic_henna.svg"),
  photography("Photography", "assets/icons/ic_photography.svg"),
  eventDecor("EventDecor", "assets/icons/ic_decore.svg"),
  tailoring("Tailoring", "assets/icons/ic_tailoring.svg");

  final String title;
  final String iconPath;
  const Categories(this.title, this.iconPath);
}
